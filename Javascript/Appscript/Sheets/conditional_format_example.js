function createRule() {
    // Get Ranges
    var sheet = SpreadsheetApp.getActiveSheet();
    var cellToWatch = sheet.getActiveCell()
    var rangeForRule = cellToWatch.offset(-6, 1, 10, 15)
    
    // Create absolute Cell reference
    var cellNotation = cellToWatch.getA1Notation()
    var patt = /([a-zA-Z]+)([\d]+)/
    var result = patt.exec(cellNotation)
    var absoluteRef = "$" + result[1] + "$" + result[2]
  
    // Create Conditional Formatting rule
    var rule = SpreadsheetApp.newConditionalFormatRule()
      .whenFormulaSatisfied('=OR('+ absoluteRef +'="金",'+ absoluteRef +'="木")')
      .setBackground("#00FF00")
      .setRanges([rangeForRule, cellToWatch])
      .build();
    var rules = sheet.getConditionalFormatRules();
    rules.push(rule);
    sheet.setConditionalFormatRules(rules);
  }