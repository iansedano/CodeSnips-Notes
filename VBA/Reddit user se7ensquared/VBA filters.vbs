'Check Auto Filter existence
'Each worksheet can only contain one AutoFilter.  The following code checks for the existence of an AutoFilter by checking the AutoFilterMode property of the sheet.
'Check if an AutoFilter already exists
If ActiveSheet.AutoFilterMode = True Then
'Do something
End If

' Add / Remove an Auto Filter
'Apply filter to 'Current Region' which contains cell A1.
ActiveSheet.Range("A1").AutoFilter
' The AutoFilter will be applied to the “current region” of the cells.  The Current Region represents the cells surrounding the selected cell which are not separated by a blank row or column.
' Trying to add an AutoFilter to an empty cell will trigger an error message.
'Remove AutoFilter
ActiveSheet.AutoFilterMode = False

' Hide / Display Auto Filter drop-down button
'The drop-down buttons can be hidden, giving the appearance that there is no AutoFilter on the worksheet.  This is great if using VBA to control the AutoFilter as part of a process; the user will not be able to apply their own settings.
'Hide the dropdown filter from Cells by field number, or by range
ActiveSheet.Range("A1").AutoFilter Field:=1, Visibledropdown:=False
ActiveSheet.Range("A1").AutoFilter Field:=2, Visibledropdown:=False
'Display the dropdown filter from Cells by field number, or by range
ActiveSheet.Range("A1").AutoFilter Field:=1, Visibledropdown:=True
ActiveSheet.Range("A1").AutoFilter Field:=2, Visibledropdown:=True

' Count visible records
' After applying a filter, counting the visible cells in the first column will show the number of records meeting the criteria applied.
'Count the number of rows which are visible in the AutoFilter
'including the Header (hence the -1 at the end)
MsgBox ActiveSheet.AutoFilter.Range.Columns(1). _
    SpecialCells(xlCellTypeVisible).Count - 1

' Get Auto Filter range
' The code below will show you the range of cells which are covered by the AutoFilter.
'Get Range of AutoFilter, including the header row
MsgBox ActiveSheet.AutoFilter.Range.Address

' Show everything (clear all filters)
' Showing everything in the AutoFilter will cause an error if a filter has not been applied.
'First check if a filter has been applied
If ActiveSheet.FilterMode = True Then
'Show all the data
    ActiveSheet.ShowAllData
End If