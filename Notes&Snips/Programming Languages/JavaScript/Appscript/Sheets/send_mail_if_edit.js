function sendmeMail(f) {
    var rng = f.range;
    var col = rng.getColumn()
    var row = rng.getRow()
    var sheet = rng.getSheet()
    
    if (sheet.getName() == "Sheet1" && col == 8) {
          MailApp.sendEmail("email address", "Edited!", rng.getA1Notation() + " " + rng.getValue())
      }
  }

// Make an onEdit trigger!