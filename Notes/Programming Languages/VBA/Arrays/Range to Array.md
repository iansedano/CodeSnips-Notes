```vba
Option Explicit

'----------------------------------------
'
' Various Ranges to Arrays
'
'
'----------------------------------------

Dim arr As Variant

arr = Range("A1:A10").Value


'as simple function
Function RangeToArray(rg As Range, arr As Variant)
	arr = rg.Value
End Function

'but it is a 2 dimensional array even if your range is A:A
'to make it a 1 dimensional array you need to use TRANSPOSE

arr = Application.Transpose(Range("A1:A10"))


'Using Value2 gives a performance benefit. 
'Range.Value2 works the same way as Range.Value, except that it does not check the cell format and convert to Date or Currency. And thats probably why its faster than .Value when retrieving numbers.

arr = [a1:a10].Value2


'Using Tables and named ranges


Dim wsMaster As Worksheet
Dim tblMaster As ListObject
Dim rgMasterCode As ListColumn

Set wsMaster = ThisWorkbook.Worksheets("MASTER")
Set tblMaster = wsMaster.ListObjects("master")
Set rgMasterCode = tblMaster.ListColumns("Full Code")

'to 1D array
MasterCodeList = Application.Transpose(rgMasterCode.DataBodyRange) ' transpose may not be needed here

'1D array to 2D
MasterCodeList = Application.Transpose(MasterCodeList) ' transpose may not be needed here
```