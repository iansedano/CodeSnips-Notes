[https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/super](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/super)


[https://www.w3schools.com/jsref/jsref\_class\_super.asp](https://www.w3schools.com/jsref/jsref_class_super.asp)

```js
class Rectangle {
	constructor(height, width) {
		this.name = 'Rectangle';
		this.height = height;
		this.width = width;
	}
	
	sayName() {
		console.log(`I am a ${name}`)
	}
}


class Square {
	constructor(length) {
		super(length, length)
		this.name = Square;
	}
}
```