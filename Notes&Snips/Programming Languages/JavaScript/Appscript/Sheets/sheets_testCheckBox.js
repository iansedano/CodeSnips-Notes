function testCheckbox() {
  var sheet = SpreadsheetApp.getActiveSheet();
  var range = sheet.getDataRange()
  var values = range.getValues()
  
  var dataValidations = range.getDataValidations();
  
  dataValidations.forEach(function(row, i) {
    row.forEach(function(dv, j) {
      var isCheckbox = dv != null &&
        dv.getCriteriaType() == SpreadsheetApp.DataValidationCriteria.CHECKBOX;
      Logger.log('%s, %s, %s', i, j, isCheckbox)
    });
                
  });
}