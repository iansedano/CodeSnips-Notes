```vba
Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



' If you are investigating an issue with the Dictionary
' it can be useful to see the contents.

 
 
' Use the following sub to Print each
'Key and Item to the Immediate Window(Ctrl + G).

' https://excelmacromastery.com/

Sub PrintContents(dict As Scripting.Dictionary)
    
    Dim k As Variant
    For Each k In dict.Keys
        ' Print key and value
        Debug.Print k, dict(k)
    Next

End Sub
 
 
'You can use it like this

Dim dict As Scripting.Dictionary
Set dict = New Scripting.Dictionary

' Add items to Dictionary here

' Print the contents of the Dictionary to the Immediate Window
PrintContents dict
 
 
' If you are stepping through the code you can also
' add dict.Count to the Watch Window
' to see how many items are currently in the Dictionary.
' Right-click anywhere in the code window and select Add Watch.
' Type dict.Count into the text box and click Ok.

' You can also use the Dictionary itself as a Watch.
' Add Dict to the Watch window.
' If you click on the plus sign
' you will see the contents of the Dictionary.
' This can be useful but it only shows the key and not the item.

' Note: You can only view Watches when the code is running.


```