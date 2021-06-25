Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



Function SumAll(ParamArray var() As Variant) As Double
    Dim i As Integer
    Dim tmp As Double
    For i = LBound(var) To UBound(var)
        If IsNumeric(var(i)) Then tmp = tmp + var(i)
    Next
    SumAll = tmp
End Function