```jsx

const getItems = useCallback(() => {
	return operation(input)
}, [input])

```

difference between useMemo and useCallback. Callback returns the *function*. Memo returns the *return* value. Which allows you to send arguments to it

```jsx

const getItems = useCallback((arg) => {
	return operation(input) + arg
}, [input])

```

This also allows you to keep the same referential equality of a function...

Often used to keep the same value of the function so that it can be used in dependency array.