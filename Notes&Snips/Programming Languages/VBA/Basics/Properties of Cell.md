```vba
Option Explicit

'----------------------------------------
'
' Examples of Property of Cell and modifying them
'
'
'----------------------------------------


ActiveCell.Value = "A"
ActiveCell.Interior.Color = RGB(0, 255, 0)
ActiveCell.HorizontalAlignment = xlCenter


With ActiveCell
    .Value = "A"
    .HorizontalAlignment = xlCenter
    .Interior.Color = RGB(0, 255, 0)
End With

ActiveCell(1,2).Value = 1 'If active cell is A1, then "1" is put in B1
ActiveCell(1,3).Value = 1 'If active cell is A1, then "1" is put in c1
```