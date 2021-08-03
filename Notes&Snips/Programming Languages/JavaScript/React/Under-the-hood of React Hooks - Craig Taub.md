author: Craig Taub
date: Apr 2020

[link](https://itnext.io/under-the-hood-of-react-hooks-805dc68581c3)

Building own simple version of React

```js
const React = {
	render: Component => {
		const exampleProps => {
			unit: "likes"
		}:
		const compo = Component(exampleProps);
		compo.render();
		return compo;
	}
}
```
...

useState returns a reducer state and and action dispatcher which is essentially a value and a setter.

