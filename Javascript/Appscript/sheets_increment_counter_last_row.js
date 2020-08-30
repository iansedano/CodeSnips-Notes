function myCounter()
{
  /*
  ----------------------------------------------------------------
  It adds +1 in the last row of the column D of the active sheet.
  https://myengineeringworld.net/2018/09/gas-triggers-events.html
   https://myengineeringworld.net/2018/09/gas-triggers-events.html
  ----------------------------------------------------------------
  */
  
  // Get the active sheet.
  var sheet = SpreadsheetApp.getActiveSheet();
  
  // Get the last row in column D that contains values.  
  var lastRow = sheet.getRange("D1:D").getValues().filter(String).length;
 
  // Check if the last row is 0. If yes, fill the number 1 in the cell D1.
  if(lastRow == 0)
  {
    sheet.getRange(lastRow + 1, 4).setValue(1);
    return;
  }
  
  // Add +1 in the next available row in column D.
  sheet.getRange(lastRow + 1, 4).setValue(sheet.getRange(lastRow, 4).getValue() + 1);
}