```jsx
import { useState, useEffect } from "react";

import "./styles.css";

const options = [
  {
    id: 1,
    value: "option 1"
  },
  {
    id: 2,
    value: "option 2"
  },
  {
    id: 3,
    value: "option 3"
  }
];

const previousSelection = 2;

function App() {
  const [selection, setSelection] = useState(1);

  useEffect(() => {
    console.log(`setting previous selection as ${previousSelection}`);
    setSelection(previousSelection);
  }, []);

  return (
    <label>
      <select defaultValue={selection}>
        {options.map((option) => {
          return <option value={option.id}> {option.value} </option>;
        })}
      </select>
    </label>
  );
}

export default App;
```

This doesn't work because `defaultValue` is only updated in the initial render. https://stackoverflow.com/a/30148963/10445017