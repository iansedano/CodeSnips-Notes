```jsx
import React from 'react';
import ReactDOM from 'react-dom';

const data = {
	'name': 'Ian',
	'languages': [
		'JavaScript',
		'Python',
		'C++'
	]
}

function Main(props) {
	return (
		<div\>{props.name}</div\>
	)
}

ReactDOM.render(<Main {...data}/>, document.querySelector('#root'));
```

The last line renders to 

```js
ReactDOM.render(React.createElement(Main, data), document.querySelector('#root'));
```

Which is strange. You'd think that you could

```js
ReactDOM.render(<Main data/>, document.querySelector('#root'));
```

But no, you cannot.

```js
ReactDOM.render(<Main props=data/>, document.querySelector('#root'));
```

will result in having to call:

```jsx
function Main(props) {
	return (
		<div\>{props.props.name}</div\>
	)
}
```
(NEED TO TEST THIS)


The main thing to take away is that all props are passed as an object.
Whenever you are using JSX or `React.createElement` you are calling another component (as a function or a class) with an object as your argument.

You don't even have to call it props (is this true for class components?) 

```jsx
function Main(data) {
	return (
		<div\>{data.name}</div\>
	)
}
```



`props.children` is the content