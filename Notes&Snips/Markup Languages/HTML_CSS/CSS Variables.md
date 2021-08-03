https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties

CSS Variables, cascading variables


from https://www.carlrippon.com/implementing-dark-mode-in-a-react-app-with-css-properties/

We define the CSS properties in the [`:root`](https://developer.mozilla.org/en-US/docs/Web/CSS/:root) pseudo-class. This is the root element of a tree representing the document.

```css
:root {
  --background-color: #fefefe;
  --color: #343434;
}
```

We have initialized these values to light mode colors.

We can then reference these CSS properties in other CSS class definitions using the `var` function:

```css
body {
  background-color: var(--background-color);
  color: var(--color);
}
```

```js
document.body.style.setProperty("--color", "#fff");
document.body.style.setProperty("--background-color", "#3f3f3f");
```


```js
// get variable from inline style
element.style.getPropertyValue("--my-var");

// get variable from wherever
getComputedStyle(element).getPropertyValue("--my-var");

// set variable on inline style
element.style.setProperty("--my-var", jsVar + 4);
```

### Fallback values

```css
color: var(--my-var, red);
```