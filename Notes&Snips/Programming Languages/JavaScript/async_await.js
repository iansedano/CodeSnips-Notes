/*
async functions work on top of promises
can be thought of as alternate way
to write promise-based code
can avoid chaining promises together with async

*/

// Function declaration

async function getData() {
    // await...
}

// with arrow function

const getData = async () => {
    // await...
}

// as object method

const obj = {
    async getName() {
        return fetch ('https://www.example.com')
    }
}

// in a class

class Obj {
    async getResource() {
        return fetch('https://www.example.com')
    }
}

// Class constructors and getters/setters cannot be async

/*
Async functions always return promises.
The body of an async function is always
wrapped in a new Promise.

If the return value is a primitive,
async returns a promise-wrapped version
of the value.
If the return value is a promise object,
its resolution is returned in a new promise.
*/

const p = Promise.resolve('hello')
p instanceof Promise; // true

Promise.resolve(p) === p; // true

//

/*
Async pauses at each await expression



