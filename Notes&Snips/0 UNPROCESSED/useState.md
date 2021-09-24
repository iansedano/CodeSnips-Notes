Updater form of `useState`

```jsx
const [count, setCount] = useState(0)

setCount(s => s + 1) // updater form
setCount(count + 1) // normal form
```

Acts like a reducer. (because useState uses useReducer under the hood [[Under-the-hood of React Hooks - Craig Taub]])

