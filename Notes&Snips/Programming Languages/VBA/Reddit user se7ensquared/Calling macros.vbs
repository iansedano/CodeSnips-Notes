'Run a macro in the same workbook
'The standard method for calling a macro contained in the same workbook are detailed below.
'Use the macro’s name
' In this code example, only the macro’s name is required.
Sub CallAnotherMacro()
    NameOfMacro
End Sub
'When using this method with parameters/arguments, the first argument follows the name of the macro, each subsequent argument 'is separated by a comma.
Sub CallAnotherMacro()
    Dim argument1 As String
    Dim argument2 As Integer
    argument1 = "ExampleText"
    argument2 = 1
    NameOfMacro argument1, argument2
End Sub
'Calling a macro
'Using the Call statement is my preferred method as it is easier to read.
Sub CallAnotherMacro()
    Call NameOfMacro
End Sub
'Parameters used with this method are enclosed in parentheses and separated by a comma.
Sub CallAnotherMacro()
    Dim argument1 As String
    Dim argument2 As Integer
    argument1 = "ExampleText"
    argument2 = 1
    Call NameOfMacro(argument1, argument2)
End Sub
'Run a macro
'The Run command is similar to Call, but requires the name of the macro to be in the form of a text string.
Sub CallAnotherMacro()
    Run "NameOfMacro"
End Sub
'To use arguments, the text string is followed by a comma, each argument is separated by a comma.
Sub CallAnotherMacro()
    Dim argument1 As String
    Dim argument2 As Integer
    argument1 = "ExampleText"
    argument2 = 1
    Run "NameOfMacro", argument1, argument2
End Sub
'Run a macro based on a variable
'It is possible to Run a macro based on the value of a string variable.  This enables a different macro to be triggered depending on the 'value of the string variable at that point.
'In the example below:
• 'NameOfMacro is the name of the Sub procedure (the same as the examples above)
• 'MacroName is a string variable, which holds the text “NameOfMacro”
Sub CallAnotherMacro()
    Dim MacroName As String
    MacroName = "NameOfMacro"
    Run MacroName
End Sub
'Notice, the Run command is not followed by a text string, but a variable.  The Run function works because the variable is a text string.
'To use parameters using this method the syntax is as follows:
Sub CallAnotherMacro()
    Dim MacroName As String
    Dim argument1 As String
    Dim argument2 As Integer
    MacroName = "NameOfMacro"
    argument1 = "ExampleText"
    argument2 = 1
    Run MacroName, argument1, argument2
End Sub
'Run a macro contained in another workbook
'Note: The workbook which contains the macro must be open.
'To run a macro contained in another workbook, use the Application.Run command as follows:
Sub CallAnotherMacro()
    Application.Run "'Another Workbook.xlsm'!NameOfMacro"
End Sub
'The single quotation marks are needed when the workbook name contains a space.
'If there is no space, the single quotation marks are not required.  The code will still run correctly if they are included, so I prefer to use 'them for consistency.
Sub CallAnotherMacro()
    Application.Run "AnotherWorkbook.xlsm!NameOfMacro"
End Sub
'Run a macro contained in another workbook based on a variable
'Using the text string variable, we can build the name of the workbook and macro.  This enables us to call any macro from any open 'workbook.
Sub CallAnotherMacro()
    Dim WorkbookName As String
    Dim MacroName As String
    WorkbookName = "AnotherWorkbook.xlsm"
    MacroName = "NameOfMacro"
    Run "'" & WorkbookName & "'!" & MacroName
End Sub
'If using parameters, these can also be included a follows:
Sub CallAnotherMacro()
    Dim WorkbookName As String
    Dim MacroName As String
    Dim argument1 As String
    Dim argument2 As Integer
    WorkbookName = "AnotherWorkbook.xlsm"
    MacroName = "NameOfMacro"
    argument1 = "ExampleText"
    argument2 = 1
    Run "'" & WorkbookName & "'!" & MacroName, argument1, argument2
End Sub
