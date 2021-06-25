function sortSheet() {
  
    var sheetToSort = "Sheet1";
    var rangeToSort = "A2:G127";
    var sortOrder = [{column: 4, ascending: true},
                     {column: 3, ascending: true},
                     {column: 2, ascending: true},
                     {column: 1, ascending: true}];
    var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName(sheetToSort);
    var range = sheet.getRange(rangeToSort);
    range.sort(sortOrder);
  }