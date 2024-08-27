'Referencing ranges & cells from the worksheet
'Reference range by address
Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Range("A1:D4").[Other properties and actions]
'Reference cells by row and column - Cells(Row,Column)
Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Cells(1, 1).[Other properties and actions]
'Reference ranges by a defined name
Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Range("RangeName").[Other properties and actions]
'Assigning a range to a variable
'Assigning a range to a variable
Dim Rng As Range
Set Rng = Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Range("A1:D4")
'Assigning a cell to a variable
Dim Rng As Range
Set Rng = Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Cells(1, 1)
'Selecting ranges and cells
'Select range by address
Range("A1:D4").Select
'Select cells by row and column - Cells(Row,Column)
Cells(1, 1).Select
'Select ranges by a defined name
Range("RangeName").Select
'Changing the value of a range or cell
'Change value of a range by address
Range("A1:D4").Value = "Text here"
'Change value cells by row and column - Cells(Row,Column)
Cells(1, 1).Value = 30
'Setting the value of a variable based on the value of a cell
'Setting a variable based on a cell value
Dim CellValue As Integer
CellValue = Cells(1, 1).Value
'Counting cells, rows and columns
'Count cells in a range
Dim CellsInRange As Long
CellsInRange = Range("A1:D4").Cells.Count
'Count rows in a range
Dim RowsInRange As Long
RowsInRange = Range("A1:D4").Rows.Count
 
'Count columns in a range
Dim ColumnsInRange As Long
ColumnsInRange = Range("A1:D4").Columns.Count
'Looping through cells, rows and columns in a range
'Loop through action for each cell in a range
Dim Rng As Range
Dim CellsInRng As Range
Set Rng = Range("A1:D4")
For Each CellsInRange In Rng
    'Carry out an action
Next CellsInRange
'Loop through action for each row in a range
Dim Rng As Range
Dim CellsInRng As Range
Set Rng = Range("A1:D4")
For Each CellsInRange In Rng.Rows
    'Carry out an action
Next CellsInRange
'Loop through action for each column in a range
Dim Rng As Range
Dim CellsInRng As Range
Set Rng = Range("A1:D4")
For Each CellsInRange In Rng.Columns
    'Carry out an action
Next CellsInRange
'Inserting rows, columns, ranges and cells
'Inserting Columns
Columns("B:B").Insert
'Inserting Rows
Rows("2:3").Insert
'Inserting a range of cells (shift cells to the right)
Range("A1:D4").Insert Shift:=xlToRight
'Inserting a range of cells (shift cells to down)
Range("A1:D4").Insert Shift:=xlDown
'Deleting rows, columns, ranges and cells
'Deleting columns
Columns("B:B").Delete
'Deleting rows
Rows("3:4").Delete
'Delete a range of cells (shift cells to the right)
Range("A1:D4").Delete Shift:=xlToLeft
'Delete a range of cells (shift cells to the down)
Range("A1:D4").Delete Shift:=xlUp
'Copy and pasting
'Copy and paste everyting
Range("A1:D4").Copy
Range("H7").Paste
'Copy and paste values only
Range("A1:D4").Copy
Range("H7").PasteSpecial Paste:=xlPasteValues
'Copy and paste formats only
Range("A1:D4").Copy
Range("H7").PasteSpecial Paste:=xlPasteFormats
'Copying and paste without using the clipboard
'Copy everyting
Range("A1:D4").Copy Destination:=Range("H7")
'Copy values only
Range("H7:K10").Value = Range("A1:D4").Value
'Finding the last cell in a row or column
'Last used cell in one row
Dim LastRow As Long
LastRow = Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Cells(Rows.Count, "A").End(xlUp).Row
'Last used cell in one column
Dim LastCol As Integer
LastCol = Workbooks("WorkbookName.xlsx").Worksheets("SheetName").Cells(1, Columns.Count).End(xlToLeft).Column
'Finding the first cell in a range
'Find the row of first cell of a range
Dim FirstRow As Long
Dim Rng As Range
Set Rng = Range("A1:D4")
FirstRow = Rng.Row
'Find the column of first cell of a range
Dim FirstColumn As Long
Dim Rng As Range
Set Rng = Range("A1:D4")
FirstColumn = Rng.Column
'Finding the row and column of the active cell
'Find the row of the active cell
 ActiveCell.Row
'Find the columns of the active cell
 ActiveCell.Column
'Find the address of the active cells
ActiveCell.Address
