'Setting up the example
'This first VBA code is to set the scene.  It creates an array, calls the function to sort the array and then outputs the sorted array.  You 'only need this first piece of code if you are following it through as an example.
Sub RunTheSortMacro()
Dim i As Long
Dim myArray As Variant
'Set the array
myArray = Array("p", "A", "G", 3, "l", "6", 10, "K", 7)
'myArray variable set to the result of SortArrayAtoZ function
myArray = SortArrayAtoZ(myArray)
'Output the Array through a message box
For i = LBound(myArray) To UBound(myArray)
    MsgBox myArray(i)
Next i
End Sub
'Sort the array A-Z
'I like to use a Function, rather than a Sub for sorting an array.  The function is a reusable piece of code, it can form part of your ‘Core’ 'module, which you can copy into any VBA project.  This function takes an array as its variable and outputs the same array sorted in 'alphabetical order.
Function SortArrayAtoZ(myArray As Variant)
Dim i As Long
Dim j As Long
Dim Temp
'Sort the Array A-Z
For i = LBound(myArray) To UBound(myArray) - 1
    For j = i + 1 To UBound(myArray)
        If UCase(myArray(i)) > UCase(myArray(j)) Then
            Temp = myArray(j)
            myArray(j) = myArray(i)
            myArray(i) = Temp
        End If
    Next j
Next i
SortArrayAtoZ = myArray
End Function
'Sort the array Z-A
'The reverse function to sort the array Z-A
Function SortArrayZtoA(myArray As Variant)
Dim i As Long
Dim j As Long
Dim Temp
'Sort the Array Z-A
For i = LBound(myArray) To UBound(myArray) - 1
    For j = i + 1 To UBound(myArray)
        If UCase(myArray(i)) < UCase(myArray(j)) Then
            Temp = myArray(j)
            myArray(j) = myArray(i)
            myArray(i) = Temp
        End If
    Next j
Next i
SortArrayZtoA = myArray
End Function