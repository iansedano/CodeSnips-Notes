' Stores the value of the selected cell in a variable 
Dim prevValue As String

Private Sub Worksheet_SelectionChange(ByVal Target As Range)
    On Error Resume Next
    If Intersect(Target, Range("G:K")) Is Nothing Then
        prevValue = ""
    Else
        prevValue = Target.Value
    End If
End Sub
