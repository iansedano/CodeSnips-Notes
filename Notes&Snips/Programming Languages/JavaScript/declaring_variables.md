```javascript
var declaration;

console.log(declaration); // undefined

delaration = "this is an init";

// this variable would be scoped to the function in which it was declared

// variables declared within for loop are accessible outside it


let newDeclaration;

// let is block scoped , i.e. anything surrounded in a {}

console.log(newDeclaration);  // undefined

for (let i = 0; i<5 ; i++) {
	console.log(i);
}

// console.log(i) throws error

const myConstant = "tao" // also block scoped, but can't be changed

console.log(myConstant)

```