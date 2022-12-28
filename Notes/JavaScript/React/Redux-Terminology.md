### Actions

Source - https://redux.js.org/tutorials/essentials/part-1-overview-concepts

An action is a JS object that has a `type` field.

It is like an event object. It describes something that has happened.

The type field should have a descriptive name `todos/todoAdded`. It is common practice to have it in the format `domain/eventName`.

The other common part of the action is the `payload`

For example

```js
const addTodoAction = {
  type: 'todos/todoAdded',
  payload: 'Buy milk'
}
```


### Action Creators

An action creator is the function that creates the object when it happens.

```js
const addTodo = text => {
  return {
    type: 'todos/todoAdded',
    payload: text
  }
}
```

### Reducers

A reducer is a function that receives current `state` and an `action` and decides how to update the state if needed, and returns the new state.

It is like an event listener which handles events based on the event object.

It is called a "reducer" not because it reduces the object but because it is similar to the type of callback function you would pass into an `Array.reduce()`

> We can say that **Redux reducers reduce a set of actions (over time) into a single state**.

Reducers must:

- Calculate new state based on `state` and `action` _only_
- Not modify existing `state`, but create a new copy.
- Not have asynchronous logic, calculate random values, or cause "side effects"

```javascript
const initialState = { value: 0 }

function counterReducer(state = initialState, action) {
  // Check to see if the reducer cares about this action
  if (action.type === 'counter/increment') {
    // If so, make a copy of `state`
    return {
      ...state,
      // and update the copy with the new value
      value: state.value + 1
    }
  }
  // otherwise return the existing state unchanged
  return state
}
```


### Store

The current redux state lives in the store.

The store is created by passing in a reducer. It has a method called `getState` which returns the current state object


```javascript
import { configureStore } from '@reduxjs/toolkit'

const store = configureStore({ reducer: counterReducer })

console.log(store.getState())
// {value: 0}
```

Do you create multiple stores?


### Dispatch

The store has another method called `dispatch`. The only way to update the store is to call `store.dispatch()` and pass in the action object.

The store will then run the reducer and save the new state value inside it.

To get the new state `getState()`

```javascript
store.dispatch({ type: 'counter/increment' })

console.log(store.getState())
// {value: 1}
```


Dispatching is like triggering an event, and reducers are like event listeners.

### Selectors

Functions that know how to extract specific pieces of information from a store state value.

This is handy when an application gets bigger, so it can avoid repeating logic if different parts of the app need to read the same data.

```javascript
const selectCounterValue = state => state.value

const currentValue = selectCounterValue(store.getState())
console.log(currentValue) // 2
```

