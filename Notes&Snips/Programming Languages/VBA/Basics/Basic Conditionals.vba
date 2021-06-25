Option Explicit

'----------------------------------------
'
'	BASIC CONDITIONALS
'
'
'----------------------------------------


'Check if number is equal to 10 or 11

Sub If_Test()

    Dim MyNumber As Integer

    MyNumber = 12

    If MyNumber = 10 Then
        MsgBox "Number = 10"
    ElseIf MyNumber = 11 Then
        MsgBox "Number equals 11"
    Else
        MsgBox "Number does not equal 10 or 11"
    End If

End Sub


Sub Bool_test()

    Dim BooleanFlag As Boolean

    BooleanFlag = True

    If Not BooleanFlag = True Then
        MsgBox "It's true"
    Else
        MsgBox "It's False"
    End If

End Sub


Sub SetGrades()

    Dim Score As Integer
    Dim Grade As String

    score = 50

    If score >= 90 And score <= 100 Then
        Grade = "A"
    ElseIf score >= 0 And score <= 35 Then
        Grade = "F"
    End If

End Sub


Sub SelectCaseTest()
    
    Dim Score As Integer
    Dim Grade As String
    
    score = 50
    
    Select Case score
    
        Case 0 To 35
            Grade = "F"

        Case 36 To 50
            Grade = "D"

        Case 51 To 65
            Grade = "C"

        Case 66 To 85
            Grade = "B"

        Case 86 To 100
            Grade = "A"

        Case Else
            MsgBox "Invalid Score entered"

    End Select

End Sub
