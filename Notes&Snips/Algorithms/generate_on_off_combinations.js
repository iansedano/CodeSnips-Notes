function main() {
    updateSheetWithCombinations(7) // Modify this number to your needs.
  }
  
  // Create an array of combinations using binary numbers
  function createCombinations(positions) {
    
    let combinations = []
    // run a for loop of 2 to the power of the number of combinations to generate
    for (let i=0; i<(2 ** positions); i++){
      // converts number to binary
      let binaryString = i.toString(2)
      // converts binary string to list of 0s and 1s
      let binaryArray = binaryString.split("")
      // Pad the initial binary numbers so that they have leading 0s
      while (binaryArray.length < positions){
        binaryArray.unshift('0')
      }
      combinations.push(binaryArray)
    }
    return combinations
  }
  
  function updateSheetWithCombinations(numberOfCols) {
    // Get the spreadsheet and target ranges
    let ss = SpreadsheetApp.getActive()
    let sh = ss.getSheetByName("Sheet1")
    let cell = sh.getActiveCell()
    
    // Create the combination array
    let combinationArray = createCombinations(numberOfCols)
    
    // Convert all 0s to "NA" and 1s to the corresponding column number
    let values = combinationArray.map(row => {
      row = row.map((item, index) => {
        if (item === '0') {
          return "NA"
        } else {
          return index + 1
        }
      })
      return row
    })
  
    // Set the values in the Sheet
    let range = cell.offset(0,0,values.length, values[0].length)
    range.setValues(values)
    }