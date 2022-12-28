{
function onEdit(e) {
    var ss = SpreadsheetApp.getActiveSpreadsheet();

    // source sheet
    var sheet = e.source.getActiveSheet();
    var name = sheet.getName();
    var rng = e.range;
    var rngCol = rng.getColumn();

    if (sheet.getName() == "Sheet 1" && rng.getColumn() == 8) {

        // DO SOMETHING
    }
  }
}