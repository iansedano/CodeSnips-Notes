
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment

Can be used with arrays and properties from objects.

```js
let a, b, c, rest;

[a,b,c] = [1,2,3]

console.log(a) // 1
console.log(b) // 2
console.log(c) // 3

[a,b,c, ...rest] = [1,2,3,4,5,6,7,8,9,10]

console.log(a) // 1
console.log(b) // 2
console.log(c) // 3
console.log(rest) // [4,5,6,7,8,9,10]

({a,b} = {a:1, b:2}) // the brackets are necessary here in many situations!

console.log(a) // 1
console.log(b) // 2

{a,b,c, ...rest} = {a:1,b:2,c:3,d:4,e:5,f:6,g:7,h:8,i:9,j:10}

console.log(a) // 1
console.log(b) // 2
console.log(c) // 3
console.log(rest) // {d:4,e:5,f:6,g:7,h:8,i:9,j:10}
```



swap trick

```
let a = 1;
let b = 3;

[a, b] = [b, a];
console.log(a); // 3
console.log(b); // 1

const arr = [1,2,3];
[arr[2], arr[1]] = [arr[1], arr[2]];
console.log(arr); // [1,3,2]
```



`{ name }`
Does it require spaces? NO

reassigning property names
```js
var {"my name": myName, age} = obj2; 
```



