[https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes)

`a:active`
Selects the active link ... use?? the style when it is being pressed...

`p::after`
Insert something after the content of each `<p>` element
```
p::after { content: " - Remember this";}
```

`p::before`

Insert something before the content of each `<p>` element

`input:checked`
Selects every checked `<input>` element


`input:default`
Selects the default `<input>` element

`input:disabled`
Selects every disabled `<input>` element

`input:enabled`
Selects every enabled `<input>` element

`p:empty`
Selects every `<p>` element that has no children (including text nodes) 

`p:first-child`
Selects every `<p>` element that is the first child of its parent (doesn't work with class selectors)


`p::first-letter`
Selects the first letter of every `<p>` element

`p::first-line`
Selects the first line of every `<p>` element

`p:first-of-type`
Selects every `<p>` element that is the first `<p>` element of its parent


`input:focus`
Selects the input element which has focus


`:fullscreen`
Selects the element that is in full-screen mode

`a:hover`
Selects links on mouse over



`p:last-child`

Selects every `<p>` element that is the last child of its parent


`p:last-of-type`

Selects every `<p>` element that is the last `<p>` element of its parent


`:not(p)`

Selects every element that is not a `<p>` element



`p:nth-child(2)`

Selects every `<p>` element that is the second child of its parent



`p:nth-last-child(2)`

Selects every `<p>` element that is the second child of its parent, counting from the last child


`p:nth-last-of-type(2)`

Selects every `<p>` element that is the second `<p>` element of its parent, counting from the last child


`p:nth-of-type(2)`

Selects every `<p>` element that is the second `<p>` element of its parent


`p:only-of-type`

Selects every `<p>` element that is the only `<p>` element of its parent


`p:only-child`

Selects every `<p>` element that is the only child of its parent


`input:out-of-range`

Selects input elements with a value outside a specified range


`input::placeholder`

Selects input elements with the "placeholder" attribute specified


`input:read-only`

Selects input elements with the "readonly" attribute specified


`input:read-write`

Selects input elements with the "readonly" attribute NOT specified


`input:required`

Selects input elements with the "required" attribute specified


`:root`

Selects the document's root element


`::selection`

Selects the portion of an element that is selected by a user


`input:valid`

Selects all input elements with a valid value


`a:visited`

Selects all visited links

[https://developer.mozilla.org/en-US/docs/Web/CSS/:is](https://developer.mozilla.org/en-US/docs/Web/CSS/:is)
	
[https://css-tricks.com/almanac/selectors/m/matches/](https://css-tricks.com/almanac/selectors/m/matches/)
`:matches()` accepts a list of valid selectors as argument. Like:

```css
:matches(section, article, aside, nav) h1 {
  color: #BADA55;
}

/* Same thing as this... */
section h1,
article h1, 
aside h1,
nav h1 {
  color: #BADA55;
}
```

Note that `:matches()` can’t be nested and does not work with `:not()`. None of the following selectors will work:

```css
/* Doesn't work */
:matches(:not(...))

/* Doesn't work */
:not(:matches(...))

/* Doesn't work */
:matches(:matches(...))
```