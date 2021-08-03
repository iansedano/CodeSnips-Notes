

[The State of State Management in React](https://www.youtube.com/watch?v=BhQYZmaxTCM)


- Don't learn [[Redux]], or at least postpone it indefinitely
- 3 types of state
	- Most common - Fetching data and storing API - Redux commonly used for that. React Query. I.e use a specific library for API interaction
	- Local State - nearby components - `useState` / `useReducer` 
	- "Global" State - Any state that you don't want to pass down as props - controlling sidebar from header. Use a global state library. He uses Zustand because doesn't have to wrap entire app in provider. Global state is a sprinkle on top

Most common should be handled by a data fetching library

Not mentioned Recoil because doesn't think its too necessary in the average React application. Specific Facebook problem solver.