Option Explicit

'----------------------------------------
'
' RANGES
'
'
'----------------------------------------


Sub Range_A1_D6()

        Range("A1", "D6").Select

    End Sub


Sub ActiveCell_Example()

    Range(ActiveCell, "D6").Select

End Sub


Sub Range_Offset()

    Range("A1").Offset(RowOffset:=1, ColumnOffset:=1).Select

End Sub


Sub Range_Resize()

    Range(ActiveCell, ActiveCell).Offset(, -1).Resize(, 3).Select

End Sub




Range("A1").Offset(, 1).Value = 1 'This puts value "1" in B1
Range("A1").Offset(, 1).Value = 1 'This puts value "1" in C1

ActiveCell(1,2).Value = 1 'If active cell is A1, then "1" is put in B1
ActiveCell(1,3).Value = 1 'If active cell is A1, then "1" is put in c1


Range("A1:H8")
Cells(1, 1)


