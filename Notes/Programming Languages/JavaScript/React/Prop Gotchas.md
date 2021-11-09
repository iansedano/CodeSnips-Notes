```jsx
function Greeting({ greeting }) {
	return (
		<span>
			{greeting}
		</span>
	);
}
ReactDOM.render(<Greeting greeting="Hello"/>, root)
```

DONT USE ABOVE EXAMPLE

getting confused between object destructuring and "template" JS, and template strings...

[[Destructuring Assignment]]


You can't 
```jsx
function Greeting( greeting ) {
	return (
		<span>
			{greeting}
		</span>
	);
}

ReactDOM.render(<Greeting greeting="Hello"/>, root)
```

It will just return an empty `span`.

What is happening is this???

```jsx

let greeting;

{ greeting } = "Hello"
```