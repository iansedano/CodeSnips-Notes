```js
peopleAtParty > 10 ? "we have a party!" : "still waiting for more guests"
```

`condition` `?` `value if true` `:` `value if false`

```js
let likes = 1
let message = "Hello"
output = likes && message
console.log(output) // message

likes = 0
output = likes && message
console.log(output) // false
```

The Logical AND will not return true, as you might expect, but will return the value on the right, if both values evaluate to true.

```js
a8 = '' && false      // f && f returns ""
```

```js
var x = false || 'Hello' // gives you 'Hello'
var y = 0 && 1           // gives you 0, because 0 is "falsy" and short circuits
var z = 1 || 2           // gives you 1, because 1 is "truthy" and short circuits
```


```js
!!(false || 'Hello')
Boolean(false || 'Hello')
```