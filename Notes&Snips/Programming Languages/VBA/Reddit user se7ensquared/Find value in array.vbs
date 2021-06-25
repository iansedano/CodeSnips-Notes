' ----------------------------------------------------------------
'Function: IsInArray
'Purpose: return True if a value is in an array of values
'Params: Variant: value to find in array
'        Array of Variant: array to search
'Return: Boolean: True if is in array, false otherwise
' ----------------------------------------------------------------

Private Function IsInArray(valToBeFound As Variant, arr As Variant) As Boolean
    Dim element As Variant
    On Error GoTo IsInArrayError: 'array is empty
        For Each element In arr
            If element = valToBeFound Then
                IsInArray = True
                Exit Function
            End If
        Next element
    Exit Function
    
IsInArrayError:
    On Error GoTo 0
    IsInArray = False
End Function
