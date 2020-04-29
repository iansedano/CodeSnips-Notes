Option Explicit

'----------------------------------------
'
' Prints Array
'
'
'----------------------------------------

'for one dimensional array to debug print
For Each x In arr
    Debug.Print x
Next x


'Print 2D array to Range
Function PrintArray(arr As Variant, rg As Range)
	rg.Resize(UBound(arr, 1), UBound(arr, 2)) = arr
End Function

