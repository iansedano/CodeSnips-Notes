function testCheckbox() {
    var sheet = SpreadsheetApp.getActiveSheet();
    var range = sheet.getDataRange();
    var values = range.getValues();
    
    var dataValidations = range.getDataValidations();
    
    Logger.log(dataValidations); // Here you can inspect the 2D array
  }


function getDataValidationTypes() {
var sheet = SpreadsheetApp.getActiveSheet();
var range = sheet.getDataRange();
var values = range.getValues();
var dataValidation = range.getDataValidations();

values.forEach(function(row, i) {
    row.forEach(function(col, j){
    if (dataValidation[i][j] != null) {
        Logger.log(i, j, dataValidation[i][j].getCriteriaType().toString(), values[i][j]);
    } else {
        Logger.log(i, j, "NULL", values[i][j]);
    };
    });
});
};

function setCheckbox() {
    var sheet = SpreadsheetApp.getActiveSheet();
    var range = sheet.getRange("A1:B10");
    var values = range.getValues();
    var dataValidationRules = range.getDataValidations();
    var ruleToApply = SpreadsheetApp.newDataValidation().requireCheckbox().build();
    
    values.forEach(function(row, i) {
      if (row[1] == 1) {
        dataValidationRules[i][0] = ruleToApply;
      };
    });
    range.setDataValidations(dataValidationRules);
  }