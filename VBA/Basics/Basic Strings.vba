Option Explicit

'----------------------------------------
'
' BASIC STRINGS
'
'
'----------------------------------------


Sub ChangeCaseandCount()

    Dim Fullname As String
    Dim UFullname As String
    Dim LFullname As String
    Dim PFullname As String

    Fullname = "  DavID GiLMour  "

    LFullname = LCase(Fullname)
    UFullname = UCase(Fullname)
    PFullname = Application.WorksheetFunction.Proper(Fullname)

    Dim LengthFullName As Integer
    LengthFullName = Len(Trim(Fullname)) ' Trims spaces and counts length

End Sub


Sub HelloWorldSpace()

    MsgBox "Hello" & Space(10) & "World"

End Sub


Sub ReplaceExample()

    Dim OriginalText As String
    Dim CorrectedText As String

    OriginalText = Range("A10").Value
    CorrectedText = Replace(OriginalText, "a", "o")
    Range("A10").Offset(, 1).Value = CorrectedText ' places corrected text in adjacent cell

End Sub

Sub InStr()

    Dim Email As String
    Dim Location As Integer

    Email = "myaddress@myisp.com"
    Location = InStr(Email, "@")

    If Location = 0 Then 'InStr returns 0 if not present, otherwise returns position
        MsgBox "No @ in email address"
    Else
        MsgBox "Address contains @"
    End If

End Sub


Sub StrReverseTest()

    Dim OriginalText As String
    Dim ReveredText As String

    OriginalText = "some text"
    ReversedText = StrReverse(OriginalText)

    MsgBox (ReversedText)


End Sub


Sub LeftRightTests()

    Dim Email As String

    Email = "myaddress@myisp.com"

    MsgBox Left(Email, 9) 'Returns "myaddress"
    MsgBox Right(Email, 9) 'Returns "myisp.com"

End Sub

'Changes first to last name
Sub LastFirst()

    Dim Fullname As String
    Dim FirstName As String
    Dim LastName As String
    Dim SpacePos As Integer

    Fullname = "David Gilmour"
    SpacePos = InStr(Fullname, " ")
    FirstName = Left(Fullname, SpacePos - 1)
    LastName = Right(Fullname, Len(Fullname) - Len(FirstName))

    MsgBox (LastName & ", " & FirstName)

End Sub

Sub Replacing()

    Dim ProductCode As String
    Dim NewProductCode1 As String
    Dim NewProductCode2 As String

    ProductCode = "PD-23-23-45"
    NewProductCode1 = Replace(ProductCode, "-", "")
    NewProductCode2 = Replace(NewProductCode1, "PD", "PDC")

    MsgBox (NewProductCode2)

End Sub


