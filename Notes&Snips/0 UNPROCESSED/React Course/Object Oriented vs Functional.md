Which to choose depends on the problem you are trying to solve.

Software is an embedded system. It lives because of its context. JavaScript is a perfect example. Brendan Eich admits many mistakes in designing the language, but JavaScript got there first and was needed, so now the internet relies on it.

Functional programming prizes [[immutability]] - if you give the function something, the output of the function should always be the same (it should also not change the input)

This would not be functional

```js
let isPlayerInspired = true;

function isSuccess(fight) {
	if (isPlayerInspired == true) {
		let result = rollDice() + 2
	} else {
		let result = rollDice()
	}
	
	if (result > 4) {
		fight.success = true
	}
}

isSuccess(fight)
```

It is not functional because:

1. Its operation changes depending on a global variable `isPlayerInspired`
2. Its operation changes the value of an attribute that is passed as an argument `fight.success`.
3. It doesn't return anything.

In this case, it might make sense for a function to modify global state in this way. If you wanted to make it strictly function, you might have to do something like:

```js
let isPlayerInspired = true;

function isSuccess(isPlayerInspired, fight) {
	if (isPlayerInspired == true) {
		let result = rollDice() + 2
	} else {
		let result = rollDice()
	}
	
	if (result > 4) {
		return true
	}
}

fight.success = isSuccess(fight)
```

As you can see, all the function does is read the things that were given to it, and then it gives a result without modifying any of its inputs.

You have to use your own judgment to decide whether a functional or object oriented approach is better or to mix and match as you need.

What is clear is that the React world seems to favor a functional approach.

Functional is generally declarative and object oriented generally imperative [[Imperative v Declarative]]

[https://medium.com/@shaistha24/](https://medium.com/@shaistha24/functional-programming-vs-object-oriented-programming-oop-which-is-better-82172e53a526)

The advantage of objects is that they can closely model things in real life. You can create classes and sub-classes and build up a system with easy to understand objects. In the functional world, it is more about abstracting the processes that the data goes through.