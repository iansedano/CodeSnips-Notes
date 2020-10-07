function onEdit(e) {
    if (e.range.getColumn() == 2 && e.range.getValue()) {
      var currentRow = e.range.getRow()
      
      if (e.source.getActiveSheet().getName() == "PATIENT FOLLOWUP") {
        var ss = e.source.getActiveSheet()
        var dateRange = ss.getRange(currentRow, 6)
        dateRange.setValue(new Date())
      }
    }
  }