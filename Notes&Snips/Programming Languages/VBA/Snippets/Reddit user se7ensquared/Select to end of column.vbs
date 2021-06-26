' pass in the fully qualified range variable for the first cell
Sub selectToEndOfColumnRange(firstCell As Range)
    Dim firstRow, lastRow As Range
    Set lastRow = firstCell.End(xlDown)
    Set firstRow = lastRow.End(xlUp)

    Range(firstRow, lastRow).Select
End Sub
