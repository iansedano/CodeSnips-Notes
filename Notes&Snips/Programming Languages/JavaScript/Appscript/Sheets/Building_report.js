function main() {
    var dataRange = SpreadsheetApp.getActiveSpreadsheet().getSheetByName("InputData").getDataRange()
    
    var data = dataRange.getValues()
    var headers = data.shift()
    
    var dateRange = getDateRange(data)
    var agentData = buildAgentData(data)
    
    var reportData = buildReport(dateRange, agentData, headers)
    
    SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Report").getRange(1,1,reportData.length, reportData[0].length).setValues(reportData)
  }
  
  function getDateRange(data) {
    
    var dates = data.map( (record) => {return record[3]} )
    var minDate = new Date(Math.min.apply(null, dates))
    var maxDate = new Date(Math.max.apply(null, dates))
    
    var counter = minDate
    var dateRange = []
    while (counter <= maxDate) {
      dateRange.push(new Date(counter))
      counter.setDate(counter.getDate() + 1);
    }
    return dateRange
  }
  
  function buildAgentData(data) {
    
    agentData = {}
    
    data.forEach( (record) => {
      var name = record[2]
      var date = record[3]
      var resolved = record[6]
     
      if (!(name in agentData)) {
        agentData[name] = {[date]:{"cases":1, "resolved":resolved}}
      } else if (date in agentData[name]) {
        agentData[name][date]["cases"] += 1
        if (resolved == 1) {
          agentData[name][date]["resolved"] += 1
        }
      } else {
        agentData[name][date] = {"cases":1, "resolved":resolved}
      }
    })
    
    return agentData
  }
  
  function buildReport(dateRange, agentData, headers) {
    
    // BUILDING DATA ROWS
    
    var opportunities = [];
    var resolutions = [];
    var ftr = [];
      
    for(agent in agentData) {
      
      var rowOpp = [agent];
      var rowRes = [agent];
      var rowFtr = [agent];
      
      dateRange.forEach( (date) => {
      
        try {rowOpp.push(agentData[agent][date]["cases"])}
          catch(e){rowOpp.push("0")};
        try {rowRes.push(agentData[agent][date]["resolved"])}
          catch(e){rowRes.push("0")};
        try {rowFtr.push(agentData[agent][date]["resolved"] / agentData[agent][date]["cases"])}
          catch(e){rowFtr.push("0")};
      
      });
      
      opportunities.push(rowOpp);
      resolutions.push(rowRes);
      ftr.push(rowFtr);
    }
    
    
    // BUILDING HEADERS
    
    var headerOpp = ["Opportunities"]
    var headerRes = ["Resolutions"]
    var headerFtr = ["FTR"]
    
    dateRange.forEach( (date) => {
                      headerOpp.push("");
                      headerRes.push("");
                      headerFtr.push("");
                      });
    
    dateRange.unshift("");
    
    // BUILDING FINAL REPORT
    
    var report = [dateRange,headerOpp]
    opportunities.forEach((row) => {report.push(row)})
    report.push(headerRes)
    resolutions.forEach((row) => {report.push(row)})
    report.push(headerFtr)
    ftr.forEach((row) => {report.push(row)})
    
    return report
  }