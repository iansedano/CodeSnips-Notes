' copy & paste to any module in the workbok, hit play
Sub ListPivotsInfor()
'Update 20141112
    Dim St As Worksheet
    Dim NewSt As Worksheet
    Dim pt As PivotTable
    Dim I, K As Long
    Application.ScreenUpdating = False
    Set NewSt = Worksheets.Add
    I = 1: K = 2
    With NewSt
        .Cells(I, 1) = "Name"
        .Cells(I, 2) = "Source"
        .Cells(I, 3) = "Refreshed by"
        .Cells(I, 4) = "Refreshed"
        .Cells(I, 5) = "Sheet"
        .Cells(I, 6) = "Location"
        For Each St In ActiveWorkbook.Worksheets
            For Each pt In St.PivotTables
                I = I + 1
                .Cells(I, 1).Value = pt.Name
                .Cells(I, 2).Value = pt.SourceData
                .Cells(I, 3).Value = pt.RefreshName
                .Cells(I, 4).Value = pt.RefreshDate
                .Cells(I, 5).Value = St.Name
                .Cells(I, 6).Value = pt.TableRange1.Address
            Next
        Next
        .Activate
    End With
    Application.ScreenUpdating = True
End Sub