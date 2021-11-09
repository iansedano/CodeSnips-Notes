```vba
Option Explicit

'----------------------------------------
'
' https://www.thespreadsheetguru.com/blog/2014/6/20/the-vba-guide-to-listobject-excel-tables
'
'
'----------------------------------------



Sub LookupTableValue()

Dim tbl As ListObject
Dim FoundCell As Range
Dim LookupValue As String

'Lookup Value
  LookupValue = "ID-123"

'Store Table Object to a variable
  Set tbl = ActiveSheet.ListObjects("Table1")

'Attempt to find value in Table's first Column
  On Error Resume Next
  Set FoundCell = tbl.DataBodyRange.Columns(1).Find(LookupValue, LookAt:=xlWhole)
  On Error GoTo 0

'Return Table Row number if value is found
  If Not FoundCell Is Nothing Then
    MsgBox "Found in table row: " & _
      tbl.ListRows(FoundCell.Row - tbl.HeaderRowRange.Row).Index
  Else
    MsgBox "Value not found"
  End If

End Sub
```