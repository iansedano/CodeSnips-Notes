 https://css-tricks.com/understanding-immutability-in-javascript/
 
 
 https://redux.js.org/tutorials/essentials/part-1-overview-concepts
 
 If something is mutable, it means that its changeable.
 
 ```js
const name = "nomad"
 ```
 
 This is an immutable variable.
 
 ```js
name = "nomado" // Uncaught TypeError: Assignment to constant variable.
 ```
 
 However, in JavaScript for instance a `const` _object_ is still mutable.
 
```js
const person = {
	name: "nomad",
	age: "100"
}
```

```js
person.name = "nomado" // Successfully changes name
```

You may not be able to change the whole object, but the properties within it are still changeable

Immutability is advantageous when you have an object that may need to be referenced by many sources. To keep immutability, any changes to that object will need to be made on new immutable copies. Therefore, all changes are kept nicely isolated and can be tracked if necessary. This can have many advantageous side effect. For example, if you suddenly needed to implement an "undo" feature, this would make things much easier.

When dealing with a more functional approach, immutability also makes it easier to write functions and makes it more readable. For intance

```js
newArray = array.map(e => e * 2);
```

Is a nice illustration of an immutable process. Going over an original array to produce a new one, _without modifying the original one_

When it comes to testing, it is also easier to work with since you know what an object should be at a certain state in your application, so while running, you can check your objects at each stage.

Also leads to easy "change detection" techniques

https://immutable-js.github.io/immutable-js/

Provides many data structures that are geared towards immutability

> Much of what makes application development difficult is tracking mutation and maintaining state. Developing with immutable data encourages you to think differently about how data flows through your application.

> Immutable collections should be treated as _values_ rather than _objects_. While objects represent some thing which could change over time, a value represents the state of that thing at a particular instance of time. This principle is most important to understanding the appropriate use of immutable data.
