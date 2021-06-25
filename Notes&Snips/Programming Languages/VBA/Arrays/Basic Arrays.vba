Option Explicit

'----------------------------------------
'
' ARRAY BASICS
' Unless Option Base 1 is specified, arrays begin at 0
'
'----------------------------------------

' Integer array uses 22 bytes (11 elements * 2 bytes). 
ReDim MyIntegerArray(10) As Integer 
 
' Double-precision array uses 88 bytes (11 elements * 8 bytes). 
ReDim MyDoubleArray(10) As Double 
 
' Variant array uses at least 176 bytes (11 elements * 16 bytes). 
ReDim MyVariantArray(10) 
 
' Integer array uses 100 * 100 * 2 bytes (20,000 bytes). 
ReDim MyIntegerArray(99, 99) As Integer 
 
' Double-precision array uses 100 * 100 * 8 bytes (80,000 bytes). 
ReDim MyDoubleArray(99, 99) As Double 
 
' Variant array uses at least 160,000 bytes (100 * 100 * 16 bytes). 
ReDim MyVariantArray(99, 99) 



Sub Array1()

	Dim MyArray(4) As Integer
	    
	    MyArray(0) = 1
	    MyArray(1) = 2
	    MyArray(2) = 3
	    MyArray(3) = 4
	    MyArray(4) = 5
	    
	Debug.Print "Array size " & UBound(MyArray) + 1 'Need to add 1 because array starts at 0
	    
    For i = 0 To UBound(MyArray) 'Note i = 0
    
        Debug.Print MyArray(i)
        
    Next i

End Sub


Sub Array2()

    Dim MyArray(1 To 5) As Integer
    
    MyArray(1) = 10
    MyArray(2) = 20
    MyArray(3) = 30
    MyArray(4) = 40
    MyArray(5) = 50
    
    Debug.Print "Array size " & UBound(MyArray)
    
    For i = 1 To UBound(MyArray) 'Note i = 1
        Debug.Print MyArray(i)
    Next i
    
End Sub

Sub Array3()

    Dim MyArray(2, 3) As Integer

    MyArray(0, 0) = 10
    MyArray(0, 1) = 10
    MyArray(0, 2) = 10
    MyArray(0, 3) = 10

    MyArray(1, 0) = 20
    MyArray(1, 1) = 20
    MyArray(1, 2) = 20
    MyArray(1, 3) = 20

    MyArray(2, 0) = 30
    MyArray(2, 1) = 30
    MyArray(2, 2) = 30
    MyArray(2, 3) = 30

    For i = 0 To 2

        For j = 0 To 3

            Cells(i + 1, j + 1).Value = MyArray(i, j) 'Prints Array to Cells from A1

        Next j

    Next i

End Sub




