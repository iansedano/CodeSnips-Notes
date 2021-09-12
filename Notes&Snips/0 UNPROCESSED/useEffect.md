```jsx
useEffect(() => {
	console.log("hi")
})

useEffect(() => {
	console.log("hi")
	return () => console.log("bye")
})

useEffect(() => {
	console.log("hi")
	return () => console.log("bye")
}, [newMember])

useEffect(() => {
	console.log("hi")
	return () => console.log("bye")
}, [])
```

Mutations, subscriptions, timers, logging, and other side effects will be buggy inside a render phase - when components are being updated.

`useEffect` will run after render is committed.

If you *return a function* from the `useEffect` callback, then it will run that function just before the component is removed.. However, for every refresh, this will run.

In the example of creating a subscription, you don't want `useEffect` to recreate and clean up the subscription every single time. So you can pass in the

### Optional second argument

Which is a *dependency array*

If you leave the array blank, then the effect will be fired the first time it is rendered, on *mount* and once the component is no longer rendered at all, on *unmount*. It won't run if it is rerendered with different dependencies.

