```vba
Option Explicit

'----------------------------------------
'
' Basic Loops
'
'
'----------------------------------------


Sub SumSequence()

        Dim StartNumber As Integer
        Dim EndNumber As Integer
        Dim answer As Integer

        EndNumber = 5

        For StartNumber = 1 To EndNumber

            answer = answer + StartNumber

        Next StartNumber

        MsgBox answer

End Sub


Sub IterateThroughRange()

    For Each MyCell In Range("A2:A6")

        MyCell.Value = Replace(MyCell.Value, "-", "")

    Next MyCell

End Sub


Sub TimesTable()

    Dim StartNumber As Integer
    Dim EndNumber As Integer
    Dim answer As Integer
    Dim TimesTable As Integer

    EndNumber = 20
    TimesTable = 12

    For StartNumber = 1 To EndNumber

        answer = StartNumber * TimesTable
        Cells(StartNumber, 1).Value = StartNumber & " times " & TimesTable & " = "
        Cells(StartNumber, 1).Offset(, 1).Value = answer

    Next StartNumber

End Sub


Sub DoWhileWithCounter()

    Dim Counter As Integer

    Counter = 1

    Do While Counter < 5

        Cells(Counter, "D").Value = Counter
        Counter = Counter + 1

    Loop

End Sub
```