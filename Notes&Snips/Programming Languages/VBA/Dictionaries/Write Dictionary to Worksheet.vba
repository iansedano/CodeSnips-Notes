Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------



Sub DictionaryToWorksheet()
    
    Dim dict As New Dictionary
    
    dict.Add "France", 56
    dict.Add "USA", 23
    dict.Add "Australia", 34
    
    Dim sh As Worksheet
    Set sh = ThisWorkbook.Worksheets("Sheet1")
    
    ' Write keys to range A1:C1
    sh.Range("A1:C1").Value = dict.Keys
    
    ' Write items to range A2:C2
    sh.Range("A2:C2").Value = dict.Items
    
    ' Write keys to range E1:E3
    sh.Range("E1:E3").Value = WorksheetFunction.Transpose(dict.Keys)
    
    ' Write items to range F1:F3
    sh.Range("F1:F3").Value = WorksheetFunction.Transpose(dict.Items)

End Sub