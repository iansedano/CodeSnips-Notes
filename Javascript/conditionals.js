true
false

function trueOrFalse(wasThatTrue) {
  if (wasThatTrue){					//doesn't need "== true"
    return "Yes, that was true"
  }
  return "No, that was false"
}

function testEqual(val) {
  if (val == 12) {
    return "Equal";
  }
  return "Not Equal";
}

// === 'Strict Equality'  3 != '3'

typeof 3   // returns 'number'
typeof '3' // returns 'string'

// !== strict inequality  - will not convert datatypes...

// >, <, >=, <=  as normal

// AND is &&
// OR is ||

function testEqual(val) {
  if (val > 12 && val < 20) {
    return "OK";
  }
  return "Not OK";
}

if (num > 15) {
  return "Bigger than 15";
} else if (num < 5) {
  return "Smaller than 5";
} else {
  return "Between 5 and 15";
}


switch (val) {
  case value1:  // Strick equality is tested
    statement1;
    break;
  case value2:
    statement2;
    break;
///
  default:
    defaultStatement;
    break;
}