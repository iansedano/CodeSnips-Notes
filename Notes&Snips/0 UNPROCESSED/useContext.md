```jsx
const MyContext = React.createContext(defaultValue);

<MyContext.Provider value={/* some value */}>
	
</MyContext.Provider>
	
const ctx = useContext(MyContext)
```

