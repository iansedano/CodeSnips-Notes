Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



' https://excelmacromastery.com/
Sub CheckFruit()

    ' Select Tools->References from the Visual Basic menu.
    ' Check box beside "Microsoft Scripting Runtime" in the list.

    Dim dict As  Scripting.Dictionary
    Set dict = New Scripting.Dictionary
    
    ' Add to fruit to Dictionary
    dict.Add key:="Apple", Item:=51
    dict.Add key:="Peach", Item:=34
    dict.Add key:="Plum", Item:=43

    Dim sFruit As String
    ' Ask user to enter fruit
    sFruit = InputBox("Please enter the name of a fruit")

    If dict.Exists(sFruit) Then
        Debug.Print sFruit & " exists and has value " & dict(sFruit)
    Else
        Debug.Print sFruit & " does not exist."
    End If
    
    Set dict = Nothing
    
End Sub


'Various ways to add keys
dict.Add Key:="Orange", Item:=45
dict.Add "Apple", 66
dict.Add "12/12/2015", "John"
dict.Add 1, 45.56

' The Key can be any data type.
' The Item can be any data type,
' an object, array, collection or even a dictionary.
' So you could have a Dictionary of Dictionaries, Arrays and Collections.
' But most of the time it will be a value(date, number or text).



'We can change the value of a key using the following code
dict("Orange") = 75



' Checks for the key 'Orange' in the dictionary
If dict.Exists("Orange") Then
    MsgBox "The number of oranges is " & dict("Orange") 
Else
    MsgBox "There is no entry for Orange in the dictionary."
End If


