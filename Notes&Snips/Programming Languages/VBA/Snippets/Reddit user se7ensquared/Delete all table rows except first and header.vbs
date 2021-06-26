' ----------------------------------------------------------------
' Sub: DeleteTableRows
' Purpose: Deletes all rows in given table except header & an
'          empty first row
' Params: ListObject: Table: table to delete rows from
' By: HG
' Date: 2/1/2018
' ----------------------------------------------------------------

Sub DeleteTableRows(ByRef Table As ListObject)
    On Error Resume Next
    ' Delete rows if they exist
    Table.DataBodyRange.Clear
    Table.DataBodyRange.Offset(1, 0).Resize(Table.DataBodyRange.Rows.Count - 1, _
    Table.DataBodyRange.Columns.Count).Rows.Delete
    On Error GoTo 0
End Sub
