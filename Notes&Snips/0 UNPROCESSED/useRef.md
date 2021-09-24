https://codesandbox.io/s/react-useref-u5z3d?file=/src/App.js

```jsx
const r = useRef(1);
console.log(r) // {current: undefined}
```

`useRef` returns a _mutable_ object.

The docs say that the `current` property is initialized to the passed value, but it doesn't assign the value within the initial running of the function. https://stackoverflow.com/a/56541442/10445017

```jsx
const r = useRef(1);
useEffect(() => {
	console.log(r);
}, []);

// OUTPUT {current: 1}
```

> `useRef` is like a “box” that can hold a mutable value in its `.current` property. [source](https://reactjs.org/docs/hooks-reference.html#useref)

You can then use the ref to assign to HTML elements

```jsx
return <h1 ref={r}>Hello</h1>

// OUTPUT {current: HTMLHeadingElement}
// current: 
// <h1>Hello</h1>

```

Yet you can also use it for generic values that won't trigger state updates.

> typically you want to modify refs in event handlers and effects. [source](https://reactjs.org/docs/hooks-faq.html#is-there-something-like-instance-variables)


https://reactjs.org/docs/refs-and-the-dom.html

> here are a few good use cases for refs:
> 
> -   Managing focus, text selection, or media playback.
> -   Triggering imperative animations.
> -   Integrating with third-party DOM libraries.
> 
> Avoid using refs for anything that can be done declaratively.

### References

- https://reactjs.org/docs/hooks-reference.html#useref