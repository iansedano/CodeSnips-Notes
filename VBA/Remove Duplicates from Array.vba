Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------


Dim dict As Object
Dim rowCount As Long
Dim strVal As String

Set dict = CreateObject("Scripting.Dictionary")

rowCount = Sheet1.Range("A1").CurrentRegion.Rows.Count

'you can change the loop condition to iterate through the array rows instead
Do While rowCount > 1
  strVal = Sheet1.Cells(rowCount, 1).Value2

  If dict.exists(strVal) Then
    Sheet1.Rows(rowCount).EntireRow.Delete
  Else
    'if doing this with an array, then add code in the Else block
    ' to assign values from this row to the array of unique values
    dict.Add strVal, 0
  End If

  rowCount = rowCount - 1
Loop

Set dict = Nothing