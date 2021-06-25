

function myFunction () {
    var sheet = SpreadsheetApp.getActiveSheet()
    var activeRange = sheet.getDataRange();
    var values = activeRange.getValues();
    var headers = values[0];
    
    // TODO Building array for each column
    for (let i=0; i<headers.length; i++) {
     headers[i] = []
    }
    

  }