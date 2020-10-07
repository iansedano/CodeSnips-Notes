function onOpen(e)
{
  /*
  -------------------------------------------------------------------
  A simple trigger that acts as a logger, filling the date/time that
  the spreadsheet was openned in the last row of the column B.
   https://myengineeringworld.net/2018/09/gas-triggers-events.html
  -------------------------------------------------------------------
  */
  
  // Get the active sheet.
  var sheet = SpreadsheetApp.getActiveSheet();
  
  // Get the last row in column B that contains values.
  var lastRow = sheet.getRange("B1:B").getValues().filter(String).length;
  
  // Set the current date/time in the next available row in column B.
  sheet.getRange(lastRow + 1, 2).setValue((new Date()).toLocaleString());  
}

