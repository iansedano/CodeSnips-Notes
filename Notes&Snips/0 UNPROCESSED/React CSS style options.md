```jsx
class MyHeader extends React.Component {
  render() {
    return (
      <div>
      <h1 style={{color: "red"}}>Hello Style!</h1>
      <p>Add a little style!</p>
      </div>
    );
  }
}
```

Note the double {{}}. the first one is to denote that its js, and the next one is to denote its an object

`background-color` needs to be `backgroundColor`


```jsx
class MyHeader extends React.Component {
  render() {
    const mystyle = {
      color: "white",
      backgroundColor: "DodgerBlue",
      padding: "10px",
      fontFamily: "Arial"
    };
    return (
      <div>
      <h1 style={mystyle}>Hello Style!</h1>
      <p>Add a little style!</p>
      </div>
    );
  }
}
```


Or have a separate stylesheet

```jsx
import './App.css';
```



The official documentation as of 20210517 says that CSS classes are generally better for performance, yet for most use cases, it will probably not matter.


### CSS Modules

adding `.modules.css` as the file extension (part of the build step, i.e. Webpack takes care of it)

```css
/* style.css */
.className {
  color: green;
}
```

App.js

```jsx
import styles from "./style.css";
// import { className } from "./style.css";

element.innerHTML\= '<div class="' + styles.className + '">';
```


For local class names camelCase naming is recommended, but not enforced.

> This is recommended because the common alternative, kebab-casing may cause unexpected behavior when trying to access style.class-name as a dot notation. You can still work around kebab-case with bracket notation (eg. `style['class-name']`) but `style.className` is cleaner.


It's possible to compose selectors.

```css
.className {
  color: green;
  background: red;
}

.otherClassName {
  composes: className;
  color: yellow;
}
```

```css
.otherClassName {
  composes: className from "./style.css";
}
```