' ----------------------------------------------------------------
' Function: isValueInList
' Purpose: Pass in a search term and function will tell you if it's in the given table.
' Assumptions: There is a named single-column Excel Table Object in the given worksheet

' Params:
' searchTerm: String: the item to look for in the list
' sheet: String: the sheet name where the lookup table is located
' list: String: the name of the Excel Table object where we want to look for the searchTerm

' Return: Boolean: True if searchTerm is in list
' By: HG
' TESTED: PASS 3/12/2018
' ----------------------------------------------------------------

Private Function isValueInList(searchTerm As String, sheet As String, list As String) As Boolean
    Dim listRange As Range
    Set listRange = Sheets(sheet).ListObjects(list).Range
    
    Dim IsItThere As Range
    Set IsItThere = listRange.Find(What:=searchTerm, After:=listRange(1))
    
    If Not IsItThere Is Nothing Then
        isValueInList = True
        Exit Function
    End If
    isValueInList = False
End Function
