'---------------------------------------------------
' Prodedure: toggleComments()
' Purpose: Shows and hides all comments in a sheet
' Created By: HG
' Last Updated: 5/7/2019
'--------------------------------------------------
Sub toggleComments()
    Dim comm As Comment

    For Each comm In ActiveSheet.Comments
        If comm.Visible = False Then
            comm.Visible = True
        Else
            comm.Visible = False
        End If
        
    Next comm

End Sub