
function transposeArray(array){
  var result = [];
  for (var col = 0; col < array[0].length; col++) { // Loop over array cols
    result[col] = [];
    for (var row = 0; row < array.length; row++) { // Loop over array rows
      result[col][row] = array[row][col]; // Rotate
    }
  }
  return result;
  
  // One liner version
  // return Object.keys(a[0]).map(function (c) { return a.map(function (r) { return r[c]; }); });
}


/**
* Takes a one-dimensional array (a row) and makes it into a column (2 dim array).
*/
function rowToCol (row) {
  output = []
  for (let i=0; i < row.length ; i++) {
    output.push([row[i]]);
  }
  return output
}

/**
* Takes a two-dimensional array with only "row" (a single col) and makes it into a row (1 dim array).
*/
function colToRow (col) {
  output = []
  for (let i=0; i < col.length ; i++) {
    output.push(col[i][0]);
  }
  return output
}