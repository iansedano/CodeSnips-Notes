If you know some Python, the `slice` method is the most similar to Python's very handy index syntax

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice
```js
const animals = ['ant', 'bison', 'camel', 'duck', 'elephant'];

console.log(animals.slice(2));
// expected output: Array ["camel", "duck", "elephant"]

console.log(animals.slice(2, 4));
// expected output: Array ["camel", "duck"]

console.log(animals.slice(1, 5));
// expected output: Array ["bison", "camel", "duck", "elephant"]
```


```js
slice()
slice(start)
slice(start, end)
```


Slice returns a _shallow_ copy of the original array. For objects, slice copies an object _reference_. For strings, numbers and booleans, slice copies the value.

#reactcourse