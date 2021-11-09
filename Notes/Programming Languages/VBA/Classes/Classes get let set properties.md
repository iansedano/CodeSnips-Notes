```vba


Get ' returns an object or value from the class
Let ' sets a value in the class
Set ' sets an object in the class


Public Property Get () As Type
End Property

Public Property Let (varname As Type )
End Property

Public Property Set (varname As Type )
End Property

'*****************

' Replace this
Public Function Count() As Long
    Count = UBound(m_countries) - LBound(m_countries) + 1
End Function

' With this
Property Get Count() As Long
    Count = UBound(m_countries) - LBound(m_countries) + 1
End Function

'*****************

' We normally create a Get and Let property like this:

Private m_totalCost As Double

Property Get totalCost() As Long
     totalCost = m_totalCost
End Property

Property Let totalCost(value As Long)
     m_totalCost = value
End Property

' Using Let allows us to treat the property like a variable.
' So we can do this

	oAccount.TotalCost = 6
 
' The second difference is that
' using Let and Get allows us
' to use the same name when
' referencing the Get or Let property.
' So we can use the property like a variable.
' This is the purpose
' of using Properties over a sub and function.

'*****************
' Set is similar to Let but it is used for an object

' These line are equivalent
Let a = 7
a = 7

' So we use Let to assign a value to a variable
' we use Set to assign an *OBJECT* to an object variable.

' Using Let
Dim a As Long
Let a = 7

' Using Set
Dim coll1 As Collection, coll2 As Collection
Set coll1 = New Collection
Set coll2 = coll1
'---------------------------------------------------------

' CLASS MODULE CODE for clsPerson


' SET/LET PROPERTIES for a variable
Private m_name As String

' Get/Let Properties
Property Get name() As String
    name = m_name
End Property

Property Let name(name As String)
    m_name = name
End Property

'*****************

	' Testing Let and Set for the clsPerson Class
	Sub TestLetSet()

	    Dim name As String
	    Dim oPerson As New clsPerson
	    
	    ' Let Property
	    oPerson.name = "Bill"
	    
	    ' Get Property - setting local variable "name" to oPerson's "name"
	    name = oPerson.name

	End Sub
'---------------------------------------------------------



' CLASS MODULE CODE for clsCurrency

Private mPrices As Collection

' Get/Set Properties
Property Get Prices() As Collection
    Set Prices = mPrices
End Property

Property Set Prices(newPrices As Collection)
    Set mPrices = newPrices
End Property


'*****************

	' This code demonstrates how to use the Let\Set properties with a class.
	'
	' 1. The sub creates a collection and adds value.
	' 2. We then add it to the clsCurrency class object using the Set Property.
	' 3. We then read it from the class object usiing the Get property.
	'

	Sub TestLetSet()
	    
	    ' Create a collection and add prices
	    Dim Prices As New Collection
	    Prices.Add 21.23
	    Prices.Add 22.12
	    Prices.Add 20.12
	        
	    Dim oCurrency As New clsCurrency
	    
	    ' Uses the Set property of clsCurrency to
	    ' add the collection to the class
	    Set oCurrency.Prices = Prices

	    Dim PricesCopy As Collection
	    ' Uses the Get property of clsCurrency
	    ' to read the collection from the class
	    Set PricesCopy = oCurrency.Prices
	    
	    ' Print the results to the Immediate Window(Ctrl + G)
	    PrintCollection Prices, "Prices"
	    PrintCollection PricesCopy, "Copy"
	    
	End Sub

	' Print the contents of a Collection to the Immediate Window(Ctrl + G)
	Sub PrintCollection(c As Collection, name As String)

	    Debug.Print vbNewLine & "Printing " & name & ":"

	    Dim item As Variant
	    For Each item In c
	        Debug.Print item
	    Next item

	End Sub
```