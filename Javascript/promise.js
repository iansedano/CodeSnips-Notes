/*
https://github.com/domenic/promises-unwrapping/blob/master/docs/states-and-fates.md
https://blog.bitsrc.io/understanding-javascript-async-and-await-with-examples-a010b03926ea
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
https://medium.com/@armando_amador/how-to-make-http-requests-using-fetch-api-and-promises-b0ca7370a444

A promise is an object that represents either
completion of failure of a user task.

A promise is a proxy for a value not necessarily
known when the promise is created.

It has three possible states
PENDING (not settled)
FULFILLED (promise kept / completed)
REJECTED (promise broken)

Resolved means that the promise is settled or "locked in"
to match the state of another promise.

User can assign callbacks to the two final states.

When either of these happen, the associated handlers
queued up by a promise's then methods are called.


STATES and FATES

A promise is fulfilled if promise.then(f) will call f "asap"
REJECTED if promise.then(undefined, r) will call r "asap"

FATES

RESOLVED - if trying to resolve or reject it has no effect
    i.e promise has been "locked in" to either follow another
    promise, or has been fulfilled or rejected.
UNRESOLVED - if not resolved... trying to resolve or reject
    will have an impact on the promise.

A promise can be "resolved to" either a promise or thenable
In which case it will store the promise or thenable for
later unwrapping.
Or it can be resolved to a non-promise value, in which
case it is fulfilled with that value.

A promise whose fate is resolved can be in any of the three states:

Fulfilled, if it has been resolved to a non-promise value,
    or resolved to a thenable which will call any passed
    fulfillment handler back as soon as possible,
    or resolved to another promise that is fulfilled.
Rejected, if it has been rejected directly,
    or resolved to a thenable which will call any
    passed rejection handler back as soon as possible,
    or resolved to another promise that is rejected.
Pending, if it has been resolved to a thenable which
    will call neither handler back as soon as possible,
    or resolved to another promise that is pending.
A promise whose fate is unresolved is necessarily pending.

Note that these relations are recursive, e.g. a promise that has been resolved to a thenable which will call its fulfillment handler with a promise that has been rejected is itself rejected.
*/

const myPromise = new Promise((resolve, reject) => {
    let condition;

    if(condition is met) {
        resolve('Promise is resolved successfully.');
    } else {
        reject('Promise is rejected');
    }
});

//
myPromise.then(); // is called after promise is resolved

myPromise.then((message) => {
    console.log(message);
})

// then is only for resolved promises

myPromise.then((message) => {
    console.log(message);
}).catch((message) => {
    console.log(message);
})

// if promise gets rejected it jumps to the catch method??



Promise.resolve(value)

/*
returns a Promise object that is resolved
with a given value.

Any of three things can happen
* If the value is a promise, a promise is returned
* If the value is 'thenable' (has then attached) then
returned promise will follow that then to the final state
* The promise fulfilled with its value will be returned.
*/