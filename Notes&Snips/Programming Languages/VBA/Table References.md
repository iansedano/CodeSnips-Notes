```vba
Option Explicit

'----------------------------------------
'
'
' https://www.thespreadsheetguru.com/blog/2014/6/20/the-vba-guide-to-listobject-excel-tables
'
'----------------------------------------

'Entire Table
ActiveSheet.ListObjects("Table1").Range.Select

'Table Header Row
ActiveSheet.ListObjects("Table1").HeaderRowRange.Select

'Table Data
ActiveSheet.ListObjects("Table1").DataBodyRange.Select

'Third Column
ActiveSheet.ListObjects("Table1").ListColumns(3).Range.Select

'Third Column
(Data Only)	ActiveSheet.ListObjects("Table1").ListColumns(3).DataBodyRange.Select

'Select Row 4 of Table Data
ActiveSheet.ListObjects("Table1").ListRows(4).Range.Select

'Select 3rd Heading
ActiveSheet.ListObjects("Table1").HeaderRowRange(3).Select

'Select Data point in Row 3, Column 2
ActiveSheet.ListObjects("Table1").DataBodyRange(3, 2).Select

'Subtotals
ActiveSheet.ListObjects("Table1").TotalsRowRange.Select
```