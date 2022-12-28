
https://redux.js.org/tutorials/essentials/part-1-overview-concepts

To easily make copies of objects as they are passed around and "changed"

[[JavaScript Spread Syntax]] can be used to create copies

or the [[JS slice]] without any arguments to make a copy

```js
const obj = {
  a: {
    // To safely update obj.a.c, we have to copy each piece
    c: 3
  },
  b: 2
}

const obj2 = {
  // copy obj
  ...obj,
  // overwrite a
  a: {
    // copy obj.a
    ...obj.a,
    // overwrite c
    c: 42
  }
}

const arr = ['a', 'b']
// Create a new copy of arr, with "c" appended to the end
const arr2 = arr.concat('c')

// or, we can make a copy of the original array:
const arr3 = arr.slice()
// and mutate the copy:
arr3.push('c')
```


Redux expects all state updates to be done immutably


