'---------------------------------------------------
' Prodedure: toggleShapes()
' Purpose: Shows and hides all shapes in a sheet
' Created By: HG
' Last Updated: 5/7/2019
'--------------------------------------------------
Sub toggleShapes()
    Dim shp As Shape

    For Each shp In ActiveSheet.Shapes
        If shp.Visible = False Then
            shp.Visible = True
        Else
            shp.Visible = False
        End If
        
    Next shp

End Sub