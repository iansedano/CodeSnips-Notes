```vba
Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



Sub WriteArrayToImmediateWindow(arrSubA As Variant)

Dim rowString As String
Dim iSubA As Long
Dim jSubA As Long

rowString = ""

Debug.Print
Debug.Print
Debug.Print "The array is: "
For iSubA = 1 To UBound(arrSubA, 1)
    rowString = arrSubA(iSubA, 1)
    For jSubA = 2 To UBound(arrSubA, 2)
        rowString = rowString & "," & arrSubA(iSubA, jSubA)
    Next jSubA
    Debug.Print rowString
Next iSubA

End Sub

'If this is for debugging purposes,
'it's not convenient to write a macro to view the contents of the array
'during program execution. Might even cause problems.
'
'For debugging during program execution,
'you'll want a code-free method you can use across all VB projects,
'to spy the contents of your array.

'In VBA IDE, click View menu > Locals Window
'In Local pane, find the array-name.
'Expand the nodes to find your values.
'The nodes will differ, depending on the type of array.

```