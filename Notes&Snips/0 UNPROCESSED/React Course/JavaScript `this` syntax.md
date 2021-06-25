
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this

Differences between JavaScript strict mode and non-strict mode

`this` is determined by how a function is called (runtime binding)

`bind()` is to fix the value so its not changed each time its called.

arrow functions don't have `this`, using the enclosing lexical context's `this`

https://www.w3schools.com/js/js_this.asp#:~:text=The%20JavaScript%20this%20keyword%20refers,on%20where%20it%20is%20used%3A&text=In%20a%20function%2C%20this%20refers,strict%20mode%2C%20this%20is%20undefined%20.

-   In a method, `this` refers to the **owner object**.
-   Alone, `this` refers to the **global object**.
-   In a function, `this` refers to the **global object**.
-   In a function, in strict mode, `this` is `undefined`.
-   In an event, `this` refers to the **element** that received the event.
-   Methods like `call()`, and `apply()` can refer `this` to **any object**.


#reactcourse