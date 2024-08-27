' search tags: changelog, changes, change

' Instructions for use:
' Copy & Paste code into the sheet you wish to MONITOR for changes
' Change "logSheet" variable to be the sheet you wish to send the
' log to (line 26). Point to the column of the item name (line 39)
' Set the monitoredRange (range where a change will trigger logging)
' (line 25)
Option Explicit
' ----------------------------------------------------------------
' Event: Worksheet_Change
' Purpose: Log changes in a seperate sheet when change is made in
'          range given to monitor
'
' Params: Range: Target
' ----------------------------------------------------------------

Dim oldValue As String
Dim itemName As String

Private Sub Worksheet_Change(ByVal Target As Range)

        Dim logSheet As Worksheet
        Dim monitoredRange As Range
        Set monitoredRange = Range("J11:X250")
        Set logSheet = Sheets("FcstChangeLog")
        recordChanges logSheet, Target, monitoredRange
            
End Sub
' ----------------------------------------------------------------
' Event: Worksheet_SelectionChange
' Purpose: Sets SKU Name based on selected cell
' Params: Range: Target
' ----------------------------------------------------------------

Private Sub Worksheet_SelectionChange(ByVal Target As Range)

    On Error Resume Next
    itemName = Cells(Target.Row, 3)
    
End Sub

' ----------------------------------------------------------------
' Subroutine: recordChanges
' Purpose: If changed cell is in monitored range, set the values
'          of cells in the logsheet according to changes made
'
' Params: Worksheet: logSheet: sheet where changes are logged
'         Range: Target: the cell being edited in the monitored
'                        range
'         Range: monitoredRange: the range of cells to watch for
'                                changes to put in the log
' By: HG
' Date: 4/1/2019
' ----------------------------------------------------------------
Private Sub recordChanges(logSheet As Worksheet, ByVal Target As Range, monitoredRange As Range)
    ' find last row in the table
    Dim lastRow As Long
    lastRow = logSheet.Range("tblFcstChangeLog").Row + logSheet.Range("tblFcstChangeLog").Rows.Count
    ' determine if cell is in the range we are monitoring
    If Not Intersect(ActiveCell, monitoredRange) Is Nothing Then
        Dim newValue As String
        If Target.Value = "" Then newValue = "BLANK" Else newValue = Target.Value
        ' Set values of cells in log sheet based on changes in monitored tab
        logSheet.Cells(lastRow, 2).Value = Format(Now, "mm/dd/yyyy hh:mm")
        logSheet.Cells(lastRow, 3).Value = skuName
        logSheet.Cells(lastRow, 4).Value = oldValue
        logSheet.Cells(lastRow, 5).Value = Target.Value
        logSheet.Cells(lastRow, 6).Value = Application.UserName
    End If
End Sub

