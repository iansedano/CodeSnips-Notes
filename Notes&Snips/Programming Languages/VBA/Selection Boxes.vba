Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



'SelectionBoxSingle to allow the user to select one value only
'The code below shows how to open the SelectionBox dialog with the listbox filled with sample values allowing the user to select one value only, and print the selected value - if any.

Dim varArrayList As Variant
Dim strSelected As String
varArrayList = Array("value1", "value2", "value3")
strSelected = SelectionBoxSingle(List:=varArrayList)
If Len(strSelected) > 0 Then
    Debug.Print strSelected
End If


'SelectionBoxMulti to allow the user to select multiple values
'The code below shows how to open the SelectionBox dialog with the listbox filled with sample values allowing the user to select multiple values. The first of the selected values is printed - if any. The use of argument Prompt:="Select one or more values" is programmed in the SelectionBox UserForm to result in the Prompt message if the user has not selected any values.

Dim varArrayList As Variant
Dim varArraySelected As Variant
varArrayList = Array("value1", "value2", "value3")
varArraySelected = SelectionBoxMulti(List:=varArrayList, Prompt:="Select one or more values", SelectionType:=fmMultiSelectMulti, Title:="Select multiple")
If Not IsEmpty(varArraySelected) Then 'not cancelled
    Debug.Print varArraySelected(0)
End If