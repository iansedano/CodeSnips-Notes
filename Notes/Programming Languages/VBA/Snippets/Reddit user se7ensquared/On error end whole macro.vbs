 Private Sub exampleSubroutine()
  On Error GoTo errorHandling
  ' code here
  Exit Sub ' required to keep error code from triggering falsely
errorHandling: 
  MsgBox "Display error"
  End ' ends all macros both outer & inner and returns to excel immediately
End Sub