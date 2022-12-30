```vb
Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------




' clsCustomer Class Module Code
Public CustomerID As String
Public Amount As Long
Public Items As Long
 
 

' Create a new clsCustomer object
Set oCust = New clsCustomer

' Set the values
oCust.CustomerID = rg.Cells(i, 1).Value
oCust.Amount = rg.Cells(i, 2).Value
oCust.Items = rg.Cells(i, 3).Value

' Add the new clsCustomer object to the dictionary
dict.Add oCust.CustomerID, oCust
```