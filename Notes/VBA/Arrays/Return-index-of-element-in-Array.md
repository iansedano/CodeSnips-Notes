```vba
Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



'https://stackoverflow.com/questions/7031416/return-index-of-an-element-in-an-array-excel-vba/7031744

Dim pos, arr, val

arr =CodeList
val ="LQU-SCU-POR-26910-94"

pos=Application.Match(val, arr, False)

if not iserror(pos) then
   Msgbox val & " is at position " & pos
else
   Msgbox val & " not found!"
end if
```