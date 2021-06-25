/* I made a new spreadsheet with only a few headers - "name", "timestamp", and "email" (this is not real data). "timestamp" needs to be written exactly the same (no capitals etc).
sample sheet

I opened the script editor to start a container bound script (container bound to the spreadsheet).
I wrote this code:

*/

function doPost (e) {
  var doc = SpreadsheetApp.getActiveSpreadsheet() // works if container bound
  var sheet = doc.getSheetByName("Sheet1")
  var headers = sheet.getRange(1, 1, 1, sheet.getLastColumn()).getValues()[0]
  var nextRow = sheet.getLastRow() + 1
  
  var newRow = headers.map(function(header) {
    return header === 'timestamp' ? new Date() : e.parameter[header]
  })
  
  var newRange = sheet.getRange(nextRow, 1, 1, newRow.length)
  newRange.setValues([newRow])
  
  MailApp.sendEmail(e.parameter["email"], "Wellcome To Engineers", "Welcome"); // you seemed to have the order of the parameters wrong.
}
// Made a POST request with curl from the command line to test it:

curl -X POST -F 'name={{name}}' -F 'email={{email}}' https://script.google.com/macros/s/{{script id}}/exec

// This updated the spreadsheet and sent an email to the email I used in the POST request.