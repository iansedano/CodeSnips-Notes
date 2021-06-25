Option Explicit

'----------------------------------------
'
'https://stackoverflow.com/questions/27201798/index-match-vba
'https://www.ozgrid.com/forum/index.php?thread/138482-excel-vba-index-match-match-equivalent-using-scripting-dictionary/
'
'----------------------------------------



Sub test()
 Dim a, i As Long, ii As Long, w, dic As Object, e, temp
 Set dic = CreateObject("Scripting.Dictionary")
 dic.CompareMode = 1
 a = Sheets("MRP_Pivot").[a3].CurrentRegion.Value
 For i = 3 To UBound(a, 1)
 If Not dic.exists(a(i, 1)) Then
 Set dic(a(i, 1)) = CreateObject("Scripting.Dictionary")
 End If
 For ii = 2 To UBound(a, 2)
 If a(i, ii) <> "" Then dic(a(i, 1))(a(2, ii)) = a(i, ii)
 Next
 Next
 With Sheets("Main").Cells(1).CurrentRegion
 a = .Value
 With CreateObject("Scripting.Dictionary")
 .CompareMode = 1
 For i = 2 To UBound(a, 1)
 If Not .exists(a(i, 1)) Then
 .Item(a(i, 1)) = VBA.Array(i, i)
 Else
 w = .Item(a(i, 1)): w(1) = i: .Item(a(i, 1)) = w
 End If
 Next
 For ii = 7 To UBound(a, 2)
 For Each e In .keys
 For i = .Item(e)(0) To .Item(e)(1)
 temp = Empty
 If dic.exists(a(i, 5)) Then
 If dic(a(i, 5)).exists(a(1, ii)) Then temp = dic(a(i, 5))(a(1, ii))
 End If
 If IsEmpty(temp) Then temp = 0
 If ii = 7 Then
 a(i, ii) = IIf(a(i, 6) <> "", a(i, 6), a(i - 1, ii)) - temp * a(i, 2)
 Else
 a(i, ii) = IIf(a(i, 6) <> "", a(.Item(e)(1), ii - 1), a(i - 1, ii)) - temp * a(i, 2)
 End If
 Next
 Next
 Next
 End With
 .Columns("g").Resize(, .Columns.Count - 6).Value = _
 Application.Index(a, Evaluate("row(1:" & UBound(a, 1) & ")"), Evaluate("column(g:bbb)"))
 End With
End Sub


Sub test() 
    Dim a, i As Long, ii As Long, dic As Object, txt As String 
    Set dic = CreateObject("Scripting.Dictionary") 
    dic.CompareMode = 1 
    a = Sheets("sheet2").Cells(1).CurrentRegion.Value 
    With CreateObject("Scripting.Dictionary") 
        .CompareMode = 1 
        For i = 3 To UBound(a, 1) 
            If Not dic.exists(a(i, 2)) Then dic(a(i, 2)) = Empty 
            For ii = 3 To UBound(a, 2) 
                txt = a(i, 1) & Chr(2) & a(2, ii) 
                If Not .exists(txt) Then 
                    Set .Item(txt) = CreateObject("Scripting.Dictionary") 
                End If 
                .Item(txt)(a(i, 2)) = a(i, ii) 
            Next 
        Next 
        Redim a(1 To .Count + 2, 1 To dic.Count + 2) 
        a(1, 1) = "Code": a(1, 2) = "Variable Code" 
        For i = 0 To dic.Count - 1 
            a(1, i + 3) = dic.keys()(i) 
        Next 
        For i = 0 To .Count - 1 
            a(i + 2, 1) = Split(.keys()(i), Chr(2))(0) 
            a(i + 2, 2) = Split(.keys()(i), Chr(2))(1) 
            For ii = 3 To UBound(a, 2) 
                If .items()(i).exists(a(1, ii)) Then 
                    a(i + 2, ii) = .items()(i)(a(1, ii)) 
                End If 
            Next 
        Next 
    End With 
    Application.ScreenUpdating = False 
    With Sheets.Add.Cells(1).Resize(UBound(a, 1), UBound(a, 2)) 
        .Value = a: .Columns.AutoFit 
    End With 
    Application.ScreenUpdating = True 
End Sub