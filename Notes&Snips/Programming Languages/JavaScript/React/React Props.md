Props is short for properties.

They are a way to pass arguments to the components.

Why not just pass in function arguments as usual?

This is how components communicate.

This is JSX for passing a className prop.
```jsx
<div className="big"></div>
```

```javascript
React.createElement("div", {className:"big"}, "")
```



Remember that in JavaScript almost anything is an object. For example, while this may seem crazy, it is possible to do this:

```javascript
myNumber = new Number(5)
myNumber.greeting = "hello"
5 + myNumber // 10
myNumber.greeting = "hello"
```

Likewise:

```javascript
document.answerToLifeTheUniverseAndEverything = 42
```

Is also valid JavaScript. The DOM is made up of objects, which means that you can assign properties to them, and they will carry those around for their entire life cycle.

React takes advantage of this aspect and uses this to manage information. Instead of keeping the possible metadata, or construction data of an element apart from it, it binds the information to it.

Here is a sample function component:

```jsx
function NameTag(props) {
	return (
		<div>{props.name}</div>
	)
}
```


How might you call this component so that it builds with a name?



Can you do this:

```jsx
function NameTag(name) {
	return (
		<div>{name}</div>
	)
}
```

I don't think so, because elements are created via react, not by a simple function call.

This on the one hand means that if you need to pass a lot of information to a component you don't have cryptic function calls like:

```js
Component("nomad", 1, 5, myObject, true, true, false)
```


You can create an object

```js
let data = {}

data.name = "nomad"
data.pets = 1
data.minutes_away = 5
data.is_subscribed = true
data.is_premium = true
data.is_logged_in = false

<Component {...data}>
```


Note the spread operator https://reactjs.org/docs/jsx-in-depth.html#spread-attributes

**props is a keyword** but only with classes...
props are read only - to modify values in response to input state must be used.

props are for building, state for interacting.


prop destructuring

```js
function Component({ name, pets, minutes_away })
```