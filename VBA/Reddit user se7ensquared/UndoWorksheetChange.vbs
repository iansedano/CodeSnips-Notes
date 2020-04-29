' Taken from Graphics commodity notes.
' General idea is to use the ErrorMsg and errShown (errShown is declared in public scope)
' for some reason, the two sub routines are required. Trying to put it all together fails for me.

Dim errShown As Long

Private Sub Worksheet_Change(ByVal Target As Range)
    If errShown = 1 Then
        End
    Else
        ChangeData Target
    End If
End Sub

Private Sub ChangeData(ByVal Target As Range)
    
    If Not Intersect(Target, Range("G:L")) Is Nothing Then
        Target.Font.Color = vbRed
        If Target.Comment Is Nothing Then
            Target.AddComment
        Else
            Target.Comment.Delete
            Target.AddComment
        End If
        Target.Comment.Text Text:="Previous Value: " & Chr(10) & prevValue
        LogDateChange prevValue, Target
    Else
        GoTo ErrorMsg
    End If
    Exit Sub
ErrorMsg:
    If errShown = 1 Then
        errShown = 0
        End
    Else
        Dim answer As Long
        answer = MsgBox("Warning! Only Dates may be edited directly. Please do not edit gray cells or type notes directly. Instead, double-click a part number or family description and enter the change desired there." & vbCr & "Do you want to UNDO your most recent changes (recommended!)?", vbYesNo + vbExclamation, Title:="Invalid Change Detected")
        
        If answer = 6 Then
            errShown = 1
            Application.Undo
            End
        Else
            End
        End If
    End If
End Sub