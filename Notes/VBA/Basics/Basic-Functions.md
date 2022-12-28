```vba
Option Explicit

'---------------------------------------------------
' A function can return a value whereas a sub cannot
' Subs can call eachother
'
'
'---------------------------------------------------


Sub Function_Examples()

	Function Area(x As Double, y As Double) As Double
		Area = x * y
	End Function

    Debug.Print(Area(2,3))

	Dim z as Double
	z = Area(3, 5) + 2

	Debug.Print (z)

End Sub



Sub Calling_Subs()

    Dim FormatCell As Integer

    FormatCell = ActiveCell.Value

    If Not IsNumeric(FormatCell) Then
        MsgBox ("This needs to be a number - Exiting Now")
        Exit Sub
    End If

    If FormatCell < 20 Then
        Call CalledSub(True, "Arial", 22)
    Else
        Call CalledSub(False, "Times", 26)
    End If

End Sub

Private Sub CalledSub(BoldValue As Boolean, NameValue As String, SizeValue)

    With ActiveCell.Font
        .Bold = BoldValue
        .Name = NameValue
        .Size = SizeValue
    End With

End Sub

Function OptionalArgs(strState As String, Optional varRegion As Variant, Optional varCountry As Variant = "USA")
    
    If IsMissing(varRegion) And IsMissing(varCountry) Then 
        Debug.Print strState 
    ElseIf IsMissing(varCountry) Then 
        Debug.Print strState, varRegion 
    ElseIf IsMissing(varRegion) Then 
        Debug.Print strState, varCountry 
    Else 
        Debug.Print strState, varRegion, varCountry 
    End If
    
End Function
```