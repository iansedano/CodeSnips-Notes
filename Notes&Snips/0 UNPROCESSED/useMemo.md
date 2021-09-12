```jsx
const result = useMemo(() => {
	expensiveFunction(input)
}, [input])



const settings = useMemo(() => {
	return {/* object */}
}, [themeChoice])
```

Use memo can be used to cache results from an expensive function.

Or it can be used to return the same object (same reference!) and prevent it from being created anew each time.