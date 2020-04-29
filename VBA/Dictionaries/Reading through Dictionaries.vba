Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



' We can read through all the items in the Dictionary.
' We can go through the keys using a For Each loop.
' We then use the current key to access an item.

Dim k As Variant
For Each k In dict.Keys
    ' Print key and value
    Debug.Print k, dict(k)
Next
 
 ' We can also loop through the keys
 ' although this only works with Early Binding
 ' (Update Feb 2020: In Office 365 this now works with both versions):

Dim i As Long
For i = 0 To dict.Count - 1
    Debug.Print dict.Keys(i), dict.Items(i)
Next i
 
' This method works with both Early and Late binding:

Dim i As Long
For i = 0 To dict.Count - 1
   Debug.Print dict.Keys()(i), dict.Items()(i)
Next i