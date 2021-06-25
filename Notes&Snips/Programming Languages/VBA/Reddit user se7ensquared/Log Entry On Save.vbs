' Purpose: when save is initiated, calls a function called "LogNewEntry"
' Author: HG

'put code in worksheet'
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)

    Sheets("Log").Select

    Dim logEntry As Variant
    logEntry = InputBox("Enter a description of the changes made and any notes regarding the changes or press cancel or Esc key to save without writing to the log.")
    If logEntry = vbNullString Then
        Call GoToLastSheet
        Exit Sub
    End If
    Call LogNewEntry
    Sheets("Log").Range("C7").Value = logEntry
    Sheets("Log").Range("D7").Value = Application.UserName
    Call GoToLastSheet
    
End Sub

' Update with relevant table information.
Sub LogNewEntry()
    ' Add a row to the  top of the change log 
    [tblChangeLog].ListObject.ListRows.Add (1)
    Sheets("Log").[B7].FormulaR1C1 = "=Now()" 'Insert date and time in cell  b7
    Sheets("Log").[B7].Copy
    Sheets("Log").[B7].PasteSpecial xlPasteValues
    Application.CutCopyMode = False
    Sheets("Log").[D7].Value = Application.UserName
    
End Sub