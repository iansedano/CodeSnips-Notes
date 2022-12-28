https://reactjs.org/docs/hooks-reference.html#usereducer

Similar to [[Redux]]

```jsx
const [state, dispatch] = useReducer(reducer, initialArg, init);
```

Returns the current state with a dispatch method.


The reducer is usually in this format

```jsx
(state, action) => newState
```


Preferable to `useState` if you have complex state logic.

Also lets you optimize performance for components that trigger deep updates. I.e. passing `dispatch`