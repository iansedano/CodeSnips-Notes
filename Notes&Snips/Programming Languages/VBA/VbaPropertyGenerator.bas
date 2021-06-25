Attribute VB_Name = "VbaPropertyGenerator"
Option Explicit

  '// Just make a big list of variable names and types, separated
  '// by a semicolon, ie:
  '//
  '// "Prop1;String;Prop2;Integer;Prop3;Double"
                        
Private Const PropertyList$ = "ID;String;VisShape;Visio.Shape;VisDoc;Visio.Document;VisPage;Visio.Page;" & _
                              "ShapeID;Integer"
                        
Private Const Indent$ = "  "
Private Const NewLine$ = vbCrLf
Private Const PrivatePrefix$ = "m_"
Private Const PrivateSuffix$ = ""
Private Const FirstLetterOfPrivateVarLowerCase = True


Private Const NativeTypes$ = "Boolean,Byte,Double,Integer,Long,Single,String"

Sub VbaPropertyGenerator()

  '// Note: the functions called from this loop could be more
  '//       efficient by doing more in the loop, but I opted to
  '//       make the code more modular, so propsAndTypes, and the
  '//       prefix, suffix and other options are passed to many
  '//       of the other functions in entirety.
  
  Dim propsAndTypes As Variant
  propsAndTypes = Split(PropertyList$, ";")
  
  Dim sPropName As String, sTypeName As String
  Dim sPrivateItem As String, sPropertyItem As String, sPrivateItemDec As String
  Dim sPrivateBlock As String, sPropertyBlock As String
  
  '// Build all of the private variable declarations and public properties:
  Dim i As Integer
  For i = 0 To UBound(propsAndTypes) Step 2
  
    '// Get a prop name and data type from our name-type array:
    sPropName = propsAndTypes(i)
    sTypeName = propsAndTypes(i + 1)
    
    '// Build and append the private variable declaration:
    sPrivateItem = m_getPrivateVariableName(sPropName, sTypeName, PrivatePrefix, PrivateSuffix, FirstLetterOfPrivateVarLowerCase)
    sPrivateItemDec = "Private " & sPrivateItem & " As " & sTypeName
    sPrivateBlock = sPrivateBlock & NewLine & sPrivateItemDec
    
    '// Build and append the public property:
    sPropertyItem = m_getPublicProperty(sPropName, sPrivateItem, sTypeName)
    sPropertyBlock = sPropertyBlock & NewLine & sPropertyItem

  Next i
    
  '// Build the ToString function:
  Dim sToStringBlock As String
  sToStringBlock = m_getToStringFunction(propsAndTypes, PrivatePrefix, PrivateSuffix, FirstLetterOfPrivateVarLowerCase)
  
  '// Build the Class_Terminate block:
  Dim sClassTermBlock As String
  sClassTermBlock = m_getClassTerminateBlock(propsAndTypes, PrivatePrefix, PrivateSuffix, FirstLetterOfPrivateVarLowerCase)
  
  '// Output general class header info:
  Debug.Print "Option Explicit"
  Debug.Print
  Debug.Print "'// Class: C..._"
  Debug.Print "'// A class for..."
  Debug.Print
  
  '// Output the private variable declarations, the public
  '// properties and the class termination procedure:
  Debug.Print sPrivateBlock
  Debug.Print sPropertyBlock
  Debug.Print sToStringBlock
  Debug.Print sClassTermBlock
  
End Sub

Private Function m_getPublicProperty(ByVal propertyName As String, _
                                     ByVal privateName As String, _
                                     ByVal dataTypeName As String) As String

  Dim sPropBlock As String
  Dim sLetOrSet  As String, sSet As String

  '// Set variables depending on if the data type requires a 'Let' or
  '// 'Set', and if the variables require 'Set' in order to be...well...set:
  If (m_isSetVariable(dataTypeName)) Then
    sSet = "Set "
    sLetOrSet = "Set "
  Else
    sSet = vbNullString
    sLetOrSet = "Let "
  End If
  
  '// Create the Get part of the property:
  sPropBlock = sPropBlock & "Public Property Get " & propertyName & "() As " & dataTypeName & NewLine
  sPropBlock = sPropBlock & Indent & sSet & propertyName & " = " & privateName & NewLine
  sPropBlock = sPropBlock & "End Property" & NewLine
  
  '// Append the Let/Set part of the property:
  sPropBlock = sPropBlock & "Public Property " & sLetOrSet & propertyName & "(value as " & dataTypeName & ")" & NewLine
  sPropBlock = sPropBlock & Indent & sSet & privateName & " = value" & NewLine
  sPropBlock = sPropBlock & "End Property" & NewLine
  
  m_getPublicProperty = sPropBlock
    
End Function

Private Function m_getPrivateVariableName(ByVal propertyName As String, _
                                          ByVal dataTypeName As String, _
                                          ByVal prefix As String, _
                                          ByVal suffix As String, _
                                          ByVal makeFirstLetterLowerCase As Boolean) As String

  Dim privateName As String
  privateName = propertyName
  
  If (makeFirstLetterLowerCase) Then
    privateName = LCase(VBA.Left(privateName, 1)) & Mid(privateName, 2)
  End If
  
  privateName = prefix & privateName & suffix
  
  m_getPrivateVariableName = privateName

End Function

Private Function m_getClassTerminateBlock(ByRef propsAndTypes As Variant, _
                                          ByVal prefix As String, _
                                          ByVal suffix As String, _
                                          ByVal firstLetterLowerCase As Boolean) As String
                                          
  '// Creates a Class_Terminate block that sets all non-native-
  '// data-type variables to nothing. A handy clean-up subroutine
  '// that you don't have to do yourself!

  Dim sTermBlockStart As String, sTermBlockMiddle As String, sTermBlockEnd As String
  
  sTermBlockStart = "Private Sub Class_Terminate()"
  sTermBlockMiddle = vbNullString
  sTermBlockEnd = "End Sub"
    
  Dim sPropName As String, sTypeName As String, sPrivateName As String
  
  '// Build all of the private variable declarations and public properties:
  Dim i As Integer, iCt As Integer
  For i = 0 To UBound(propsAndTypes) Step 2
  
    '// Get a prop name and data type from our name-type array:
    sPropName = propsAndTypes(i)
    sTypeName = propsAndTypes(i + 1)
    
    '// See if the variable is of the 'Set' type:
    If (m_isSetVariable(sTypeName)) Then
      
      iCt = iCt + 1
      
      sPrivateName = m_getPrivateVariableName(sPropName, sTypeName, prefix, suffix, firstLetterLowerCase)
      
      '// Add a 'Set x = nothing' line:
      If (sTermBlockMiddle <> vbNullString) Then
        sTermBlockMiddle = sTermBlockMiddle & NewLine
      End If
      sTermBlockMiddle = sTermBlockMiddle & Indent & "Set " & sPrivateName & " = Nothing '//...(Type = " & sTypeName & ")"
      
    End If

  Next i
  
  If (iCt > 0) Then
    m_getClassTerminateBlock = sTermBlockStart & NewLine & sTermBlockMiddle & NewLine & sTermBlockEnd
  Else
    m_getClassTerminateBlock = vbNullString
  End If
  
End Function

Private Function m_getToStringFunction(ByRef propsAndTypes As Variant, _
                                       ByVal prefix As String, _
                                       ByVal suffix As String, _
                                       ByVal firstLetterLowerCase As Boolean) As String
                                       
  '// Creates a VB.NET style ToString() function that will return
  '// a concatenated list of all of the properties in the object.
                                       
  Dim sItemSeparator As String
  sItemSeparator = "VbCrLf"
  
  Dim sFunctionStart As String
  sFunctionStart = "Public Function ToString() as String" & NewLine & NewLine & _
                   Indent & "'// Note: not all of the variables in this class will" & NewLine & _
                   Indent & "'//       necessarily be convertable to strings. In these" & NewLine & _
                   Indent & "'//       cases, you will get errors in this function." & NewLine & _
                   Indent & "'//       In these cases, either remove the line that contains" & NewLine & _
                   Indent & "'//       a variable that can't be converted to string, or" & NewLine & _
                   Indent & "'//       substitute some option that can be, such as" & NewLine & _
                   Indent & "'//       m_someObject.String or m_someObject.Name" & NewLine & NewLine & _
                   Indent & "Dim s As String" & NewLine & NewLine & Indent & "s = "
                      

  Dim sFunctionEnd As String
  sFunctionEnd = NewLine & Indent & "ToString = s" & NewLine & NewLine & "End Function"
  
  Dim sToStringFunction As String

  Dim sFunctionMiddle As String
  sFunctionMiddle = vbNullString
  
  Dim sPropName As String, sTypeName As String, sPrivateName As String
  Dim i As Integer
  For i = 0 To UBound(propsAndTypes) Step 2
  
    '// Get a prop name and data type from our name-type array:
    sPropName = propsAndTypes(i)
    sTypeName = propsAndTypes(i + 1)
      
    '// Add new line and continuation stuff if the block is not empty:
    If (sFunctionMiddle <> vbNullString) Then
      sFunctionMiddle = sFunctionMiddle & " & " & sItemSeparator & " & _" & NewLine & Indent & "    "
    End If
    
    '// Get the private variable name:
    sPrivateName = m_getPrivateVariableName(sPropName, sTypeName, prefix, suffix, firstLetterLowerCase)
    
    sFunctionMiddle = sFunctionMiddle & Chr(34) & sPropName & " = " & Chr(34) & " & CStr(" & sPrivateName & ")"
    
  Next i
  
  '// Wrap the function with the begin and end parts of a function:
  sToStringFunction = sFunctionStart & sFunctionMiddle & NewLine & sFunctionEnd
                    
  '// Return the whole mess:
  m_getToStringFunction = sToStringFunction
  
End Function

Private Function m_isSetVariable(dataTypeName As String) As Boolean

  If (InStr(1, NativeTypes$, dataTypeName, vbTextCompare) > 0) Then
    m_isSetVariable = False
  Else
    m_isSetVariable = True
  End If

End Function








