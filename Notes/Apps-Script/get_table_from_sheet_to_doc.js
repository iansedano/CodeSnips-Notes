
function appendTable() {
  
    // Replace these values with your Sheet ID, Document ID, and Sheet Name
    
    let ssId = '<your spreadsheet id>' // REPLACE
    let docId = '<your document id>' // REPLACE
    let sheetName = '<your sheet name>' // REPLACE
    
    // Sheet
    let range = SpreadsheetApp.openById(ssId).getSheetByName(sheetName).getDataRange()
    let values = range.getValues();
    let backgroundColors = range.getBackgrounds();
    let styles = range.getTextStyles();
    
    
   // Document
    let body = DocumentApp.openById(docId).getBody();
    let table = body.appendTable(values);
   
    for (let i=0; i<table.getNumRows(); i++) {
      for (let j=0; j<table.getRow(i).getNumCells(); j++) {
        
        let docStyles = {};
        
        docStyles[DocumentApp.Attribute.BACKGROUND_COLOR] = backgroundColors[i][j];
        docStyles[DocumentApp.Attribute.FONT_SIZE] = styles[i][j].getFontSize();
        docStyles[DocumentApp.Attribute.BOLD] = styles[i][j].isBold()
        
        table.getRow(i).getCell(j).setAttributes(docStyles);
      }
    }
  }