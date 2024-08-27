Prop types should already be included with `create-react-app` but can be installed with `npm install prop-types` if you don't have it.

From the official website

> `React.PropTypes` has moved into a different package since React v15.5. Please use [the `prop-types` library instead](https://www.npmjs.com/package/prop-types).

```jsx
import PropTypes from 'prop-types';

function Element({ value }) {
	return(
		<div>{value}</div>
	)
}

Element.propTypes = {
	value: PropTypes.number.isRequired
}
```

note the case of the "p". lower case when it is an attribute of the `Element` and upper case when setting the type.

Think of it as setting flags. When compile time comes around, the PropTypes library will run over everything based on what flags you have given it.

ESLint can be used to check that you have always declared PropTypes and have passed them correctly.

- `number`
- `sring`
- `bool`
- `object`
- `func`
- `array`
- `node`
- `element`
- `instanceOf(aClass)`
- `oneOf([1,2,3])`
- `oneOfType([PropTypes.number, PropTypes.string])`
- `PropTypes.arrayOf(PropTypes.string)`
- `PropTypes.objectOf(PropTypes.number)`
- 
```
PropTypes.shape({
	count: PropTypes.number,
	city: PropTypes.string
})
```