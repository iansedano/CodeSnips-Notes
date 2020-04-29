Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------


Sub Variable_Basics()

	Dim MyNumber As Integer
	Dim MyName As String
	Dim MyLargeNumber As Long
	Dim MyOtherNumber As Double

	MyNumber = 10
	MyLargeNumber = 2147483648 'this is largest number for LONG
	MyOtherNumber = 3.6


'Data Type	Stored	Range of Values
'Byte	1 Byte	0 to 255
'Integer	2 Bytes	-32,768 to 32,767
'Single	4 Bytes	-3.402823E38 to -1.401298E-45 for negative values, 1.401298E-45 to 3.402823E38 for positive values
'Long	4 Bytes	-2,147,483,648 to 2,147,483,648
'Double	8 Bytes	-1.79769313486232e+308 to -4.94065645841247E-324 for negative values, 4.94065645841247E-324 to 1.79769313486232e+308 for positive values.
'Decimal	14 Bytes	+/-79,228,162,514,264,337,593,543,950,335 for no decimal points,+/-7.9228162514264337593543950335 for 28 places to the right of the decimal
'Date	8 Bytes	January 1, 100 to December 31, 9999
'Currency	8 Bytes	-922,337,203,685,477.5808 to 922,337,203,685,477.5807
'String (variable length)	10 bytes added to the string length	0 to 2 billion characters
'String (fixed length)	string length	1 to approximately 65,400
'Object	4 Bytes	Object in VBA
'Boolean	2 Bytes	True or False