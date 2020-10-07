function onEdit(e)
{  
  /*
  -----------------------------------------------------------------------------------------
  A simple trigger that fires after a cell change in the range A1:A10 of the active sheet.
   https://myengineeringworld.net/2018/09/gas-triggers-events.html
  -----------------------------------------------------------------------------------------
  */
  
  // Get the active sheet.
  var sheet = SpreadsheetApp.getActiveSheet();
  
  // Set the range that has to be chekced for changes.
  var selectedRange = sheet.getRange("A1:A10");
  
  // Get the active cell from the event obejct.
  var activeCell = e.range;
  
  // Check if the active cell belongs to the range of interest. 
  // If yes, show a message box in the browser.
  if(rangeIntersect(activeCell, selectedRange)) 
    Browser.msgBox("Triggered after the cell " + activeCell.getA1Notation() + " changed!");   
}


function rangeIntersect (rng1, rng2) 
{
  /*
  ------------------------------------------
  Returns true if the two ranges intersect.
  ------------------------------------------
  */
  
  // Check for empty objects.
  if(rng1 == null || rng2 == null)
    return false;
  
  // Compare the rows and columns of the two ranges.
  return (rng1.getLastRow() >= rng2.getRow()) && (rng2.getLastRow() >= rng1.getRow()) 
          && (rng1.getLastColumn() >= rng2.getColumn()) && (rng2.getLastColumn() >= rng1.getColumn());
}