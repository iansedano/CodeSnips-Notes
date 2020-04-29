Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------


Sub SplitAndJoin()

    Dim txt As String
    Dim FullNameSpaces As Variant
    Dim FullNameHyphens As Variant

    txt = "David Lloyd George"

    FullNameSpaces = Split(txt, " ") 'Makes Array of ("David","Lloyd","George")

    FullNameHyphens = Join(FullNameSpaces, "-") 'Joins array to Name separated by "-" instead of spaces

    Debug.Print FullNameHyphens 'Prints "David-Lloyd-George"

End Sub