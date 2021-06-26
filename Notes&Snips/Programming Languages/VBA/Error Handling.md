```vba
Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------


On Error Resume Next ' ignores error and carries on

Sub UsingResumeNext()

    On Error Resume Next
    
    Dim x As Long, y As Long
    
    x = 6
    y = 6 / 0
    x = 7

End Sub



'GOTO

' https://excelmacromastery.com/
Sub UsingGotoLine()

    On Error GoTo eh
    
    Dim x As Long, y As Long
    
    x = 6
    y = 6 / 0
    x = 7
    
Done:
    Exit Sub
eh:
    MsgBox "The following error occurred: " & Err.Description
End Sub


```