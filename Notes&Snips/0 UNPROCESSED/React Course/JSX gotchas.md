```jsx
function jsxTest() {
return <div>
	<aComponent/> <anotherComponent/>
</div>;
}
```

```jsx
function jsxTest() {
return
<div>
	<aComponent/> <anotherComponent/>
</div>;
}
```


There has to be a global div returned

no good:
```jsx
function jsxTest() {
return <aComponent/> <anotherComponent/>
}
```


```jsx
function jsxTest() {
return
	<React.Fragment>
		<aComponent/> <anotherComponent/>
	</React.Fragment>
}
```

or

```jsx
function jsxTest() {
return
	<>
		<aComponent/> <anotherComponent/>
	</>
}
```


Comments have to be within JS blocks

```jsx
function jsxTest() {
return
	<>
		{/*This is a comment*/}
		<aComponent/> <anotherComponent/>
	</>
}
```


Component names MUST be in capitals, lowercase are assumed to be native HTML tags

Everything must be closed, but you can have component autoclose

```jsx
<AComponent/>
```

Normal HTML elements can be self closing too:

```jsx
<div/>
```

All content in JSX divs is trimmed of spaces and newlines are ignored.


arrow function strange syntax that is ok

```jsx
const Comp = () => (
	<MyElement/>
)
```