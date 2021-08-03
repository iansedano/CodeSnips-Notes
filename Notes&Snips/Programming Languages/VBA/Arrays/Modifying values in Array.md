```vba
Option Explicit

'----------------------------------------
'
' Modyfying Arrays
'
'
'----------------------------------------




'This trims the LQU-SCU-POR- section of the code, allowing for 3 letter editions (but not 4)

For i = 0 To UBound(codeArray)
    codeArray(i) = Mid(codeArray(i), 13, 9)
Next


```