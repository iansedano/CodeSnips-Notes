// https://yagisanatode.com/2019/05/11/google-apps-script-get-the-last-row-of-a-data-range-when-other-columns-have-content-like-hidden-formulas-and-check-boxes/

var SpreadsheetID = "{ID}";
var SheetName = "{sheetname}";
 
function myFunction() {
  var ss = SpreadsheetApp.openById(SpreadsheetID)
  var sheet = ss.getSheetByName(SheetName);
  Logger.log(sheet.getLastRow() + " Is the last Column.");
  
  var range = sheet.getDataRange();
  Logger.log(range.getLastRow() + " Is the last Column.");
  
  //Range Values
  var data = range.getValues();
  Logger.log(data);
}