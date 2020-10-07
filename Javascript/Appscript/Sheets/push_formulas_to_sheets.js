//appscript.json

{
    "timeZone": "Europe/Paris",
    "dependencies": {},
    "exceptionLogging": "STACKDRIVER",
    "runtimeVersion": "V8",
    "oauthScopes": [
        "https://www.googleapis.com/auth/spreadsheets"
    ]
}

// code

function init() {
    SpreadsheetApp.openById("ID")
    Logger.log("done")
  }
  
  function install() {
    var sheet = SpreadsheetApp.getActive();
    ScriptApp.newTrigger("updateFormulas")
    .forSpreadsheet(SpreadsheetApp.getActive())
    .onEdit()
    .create();
  }
  
  function updateFormulas(e) {
    
    // Here insert the INDIVIDUAL ranges of all the cells that will contain formulas you want to move across
    var formulaRanges = ["A2", "B2"]
    // Here list the names or IDs of employees with the corresponding ID of the Sheet.
    var childSheets = {
      user1: "ID1",
      user2: "ID2"
    }
    // If you want to change your sheet name, change it here
    var sheetName = "Sheet1"
    
    try {
      var ss = e.source.getActiveSheet().getName()
      var rng = e.range.getA1Notation()
      var formulaToSet = e.range.getFormula()
      
      if (ss == sheetName && formulaRanges.includes(rng)) {
          for (const user in childSheets) {
            var userSheet = SpreadsheetApp.openById(childSheets[user])
            userSheet.getRange(rng).setFormula(formulaToSet)
          }
          
        }
    } catch (err) {Logger.log(err)}
  }