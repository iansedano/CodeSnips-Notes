https://www.youtube.com/watch?v=il43iId9JQA
Speaker: Shawn Wang
Produced by Engineers.SG Recorded by: Michael & Hui Tian

### First stage

Want to have idea of stateful functions.

```js
function useState(initVal){
	
	let _val = initVal;
	let state = initVal;
	
	const setState = (newVal) => {
		_val = newVal;
	}
	
	return [state, setState];
}


const [count, setCount] = useState(1); // destructured and count is kept seperate
console.log(count); // 1
setCount(2);
console.log(count); // 1

```


### Use a getter

Use a getter - now we have stateful functions:

```js
function useState(initVal){
	
	let _val = initVal;
	let state = () => _val;  // getter!
	
	const setState = (newVal) => {
		_val = newVal;
	}
	
	return [state, setState];
}


const [count, setCount] = useState(1);
console.log(count()); // 1
setCount(2);
console.log(count()); // 2
```

### But React does not use a Getter

```js
// Module pattern: using immediately invoked anonymous function to return an object
const React = (() => {
	
	let _val;
	
	function useState(initVal){
		let state = _val || initVal;

		const setState = (newVal) => {
			_val = newVal;
		}
		return [state, setState];
	}
	
	function render(Com) {
		let C = Com();
		C.render();
		return C;
	}
	
	return {useState, render}
})();


function Component() {
	const [count, setCount] = React.useState(1);
	
	return {
		render: () => console.log(count),
		click: () => setCount(count + 1)
	}
}

var app = React.render(Component)
app.click()
app.click() // only the first one actually increments ... because in render the component is made anew
var app = React.render(Component)
app.click()
var app = React.render(Component)
app.click()
var app = React.render(Component)
app.click()
var app = React.render(Component)

```

### But this runs into issues when using more than one hook

```js
const React = (() => {
	
	let _val; // Keeps being overwritten
	
	function useState(initVal){
		let state = _val || initVal;

		const setState = (newVal) => {
			_val = newVal;
		}
		return [state, setState];
	}
	
	function render(Com) {
		let C = Com();
		C.render();
		return C;
	}
	
	return {useState, render}
})();


function Component() {
	const [count, setCount] = React.useState(1);
	const [text, setText] = React.useState("Reactorio")
	
	return {
		render: () => console.log({count, text}),
		click: () => setCount(count + 1),
		type: (word) => setText(word)
	}
}

var app = React.render(Component)
app.click()
var app = React.render(Component)
app.type("Rectirius")
var app = React.render(Component)

/* OUTPUT
{ count: 1, text: 'Reactorio' }
{ count: 2, text: 2 }
{ count: 'Rectirius', text: 'Rectirius' }
*/

```

### Need to have a hooks array

```js
const React = (() => {
	
	let hooks = [];
	let idx = 0
	
	function useState(initVal){
		let state = hooks[idx] || initVal;
		let _idx = idx; // This is necessary to freeze the value due to scope issues...
		const setState = (newVal) => {
			hooks[_idx] = newVal;
		}
		
		idx++;
		
		return [state, setState];
	}
	
	function render(Com) {
		let C = Com();
		C.render();
		idx = 0
		return C;
	}
	
	return {useState, useEffect, render}
})();


function Component() {
	const [count, setCount] = React.useState(1);
	const [text, setText] = React.useState("Reactorio")
	
	return {
		render: () => console.log({count, text}),
		click: () => setCount(count + 1),
		type: (word) => setText(word)
	}
}

var app = React.render(Component)
app.click()
var app = React.render(Component)
app.type("Rectirius")
var app = React.render(Component)

/* OUTPUT
{ count: 1, text: 'Reactorio' }
{ count: 2, text: 'Reactorio' }
{ count: 2, text: 'Rectirius' }
*/

```

### useEffect

```js
const React = (() => {
	
	let hooks = [];
	let idx = 0
	
	function useState(initVal){
		let state = hooks[idx] || initVal;
		let _idx = idx; // This is necessary to freeze the value due to scope issues...
		const setState = (newVal) => {
			hooks[_idx] = newVal;
		}
		
		idx++;
		
		return [state, setState];
	}
	
	function useEffect(cb, depArray){
		const oldDeps = hooks[idx]
		let hasChanged = true
		
		if (oldDeps) {
			hasChanged = depArray.some((dep,i) => !Object.is(dep, oldDeps[i]))
		}
		if (hasChanged) cb()
		hooks[idx] = depArray
	}
	
	function render(Com) {
		let C = Com();
		C.render();
		idx = 0
		return C;
	}
	
	return {useState, useEffect, render}
})();


function Component() {
	const [count, setCount] = React.useState(1);
	const [text, setText] = React.useState("Reactorio")
	
	React.useEffect(()=> {
		console.log("Hey, I'm an effect")
	}, [])
	
	return {
		render: () => console.log({count, text}),
		click: () => setCount(count + 1),
		type: (word) => setText(word)
	}
}

var app = React.render(Component)
app.click()
var app = React.render(Component)
app.type("Rectirius")
var app = React.render(Component)

```