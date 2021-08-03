https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules


html

```html
<!DOCTYPE html>
<html lang="en">

<script type="module" src="main.js"></script>

</html>
```

myModule.js

```js
function helloWorld() {
	console.log("Hello World!");
}

export { helloWorld }
```

main.js

```js
import { helloWorld } from "/myModule.js";

helloWorld();
```


- modules