```javascript
function reusableFunction(){
	console.log("Hi World");
}


function functionWithArgs(arg1, arg2){
    console.log(arg1 + arg2);
}


// variables created without "var" are automatically assigned to GLOBAL scope
// even if they are within a function
// if you have local variable with same name as global variable, local takes precedence



function timesFive(num){
    return num * 5;
}

// return value of below is "undefined"
var sum = 0;
function addThree() {
  sum = sum + 3;
}



```