
[What State Management Library Should I Use with React?](https://www.youtube.com/watch?v=u_o09PD_qAs&t=500s)

### History of React

Paradigm of React was "UI is a function of State"

Evolving 

[[Flux architecture]] proposed in 2014

Redux is still extremely popular and widely used by NPM downloads

Redux encapsulated lots of state

UI State vs Server Caching State

Don't conflate the two, use library specific

Context - share logic between components which prevents prop drilling - react context is not a state management solution, with `useState` and `useReducer` it becomes a solution

State Machines - explicit model of state over time. It forces you to write out all your state.

XState

Figma is good use case for complex state - start out with vanilla...don't use library unless you have a use case.

Immutable state
	- if you directly mutate state, you will end up with bugs
	- mutable camp says there is too much boilerplate
	- its a trade off between convenience and safety
	
Immer is a way to write mutable code but execute it immutably


### URL State

Amazon URL state with search query etc.


Performance issues of Context API - useMemo...

`useSelectedContext` being proposed

