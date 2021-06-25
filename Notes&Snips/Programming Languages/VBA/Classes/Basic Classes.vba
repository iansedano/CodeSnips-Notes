Option Explicit

'----------------------------------------
'
'
'https://excelmacromastery.com/vba-class-modules/
'
'----------------------------------------



' First insert Class Module, e.g. clsCustomer
'

'now we can call this class from any workbook

' Create the object from the class module 
Dim oCustomer As New clsCustomer

' Set the customer name
oCustomer.Name = "John"

' Print the name to the Immediate Window(Ctrl + G)
Debug.Print oCustomer.Name


' Creating various students

Dim student1 As New clsStudent
Dim student2 As New clsStudent

student1.StudentName = "Bill"
student2.StudentName = "Ted"


'-------------------------------------------------------------------------
' CLASS MODULE CODE from clsAccount


' Member variable
Private m_balance As Double

' Properties
Property Get Balance() As Double
    Balance = m_balance
End Property

Property Let Balance(value As Double)
    m_balance = value
End Property

' Event - triggered when class created
Private Sub Class_Initialize()
    m_balance = 100
End Sub

' Methods
Public Sub Withdraw(amount As Double)
    m_balance = m_balance - amount
End Sub

Public Sub Deposit(amount As Double)
    m_balance = m_balance + amount
End Sub

'*****************

	' This sub uses the clsAccount class
	' The results are printed to the Immediate Window(Ctrl + G)
	Sub Demo_clsAccount()

	    Dim oAccount As New clsAccount
	    
	    ' Print the balance
	    Debug.Print "Starting balance is: " & oAccount.Balance

	    ' Deposit money
	    oAccount.Deposit 25

	    ' Print the balance
	    Debug.Print "Balance after deposit is: " & oAccount.Balance
	    
	    ' Withdraw Money
	    oAccount.Withdraw 100

	    ' Print the balance
	    Debug.Print "Balance after withdrawl is: " & oAccount.Balance
	    
	End Sub
'*****************
'-------------------------------------------------------------------------

' CLASS MODULE CODE for clsExample

' Public procedures can be called from outside the object
Public Sub PrintText(text As String)
    Debug.Print text
End Sub

Public Function Calculate(amount As Double) As Double
    Calculate = amount - GetDeduction
End Function

' private procedures can only be called from within the Class Module
Private Function GetDeduction() As Double
    GetDeduction = 2.78
End Function

'*****************

	' Sub used to demonstrate Class clsExample
	Public Sub ClassMembers()
	    
	    Dim oSimple As New clsExample
	    
	    oSimple.PrintText "Hello"
	     
	    Dim total As Double
	    total = oSimple.Calculate(22.44)
	     
	    Debug.Print total

	End Sub

'*****************
'-------------------------------------------------------------------------

' CLASS MODULE CODE from clsBankAccount

Private Balance As Double 'Set as PRIVATE...
Public AccountID As String

'*****************

	' This code will give an ERROR!!
	Sub Demo_BankAccount()

	    Dim oAccount As New clsBankAccount
	    
	    ' Valid - AccountID is public
	    oAccount.AccountID = "499789"
	    
	    ' ERROR - Balance is private
	    oAccount.Balance = 678.9
	    
	End Sub

'*****************

' CLASS MODULE CODE from clsBankAccount
Private Balance As Double
Public AccountID As String

Public Sub SetBalance(lBalance As Long)
    Balance = lBalance
    Debug.Print Balance
End Sub

'*****************

	' This code now will be ok
	Sub Demo_BankAccount()

	    Dim oAccount As New clsBankAccount
	    
	    ' Valid - AccountID is public
	    oAccount.AccountID = "499789"
	    
	    ' now seeting balance
	    oAccount.SetBalance(23452) 'will print this balance to immediate window
	    
	End Sub

'*****************

' It is considered poor practice to have public member variables.
' This is because you are allowing code outside the object
' to interfere with how the class works.
' The purpose of the using classes
' is so that we hide what is happening from the caller.

