// Needs the exact names of the files in the sheet.

function getLinks() {

    var rangeNames = "C2:C10";
    var rangeLinks = "D2:D10";
    
    var fileNames = SpreadsheetApp.getActiveSheet().getRange(rangeNames).getValues();
  
    fileNames.forEach(function(row, i) {
      if (row[0] != "") {
        try {
          var fileFound = DriveApp.getFilesByName(row[0]).next();
          fileNames[i]=[fileFound.getDownloadUrl()];
        } catch(e){
          fileNames[i] = ["file not found"];
        };
      };
    });
    
    SpreadsheetApp.getActiveSheet().getRange(rangeLinks).setValues(fileNames);
  }