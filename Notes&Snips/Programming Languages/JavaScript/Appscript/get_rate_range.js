
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