[https://www.w3schools.com/cssref/css\_selectors.asp](https://www.w3schools.com/cssref/css_selectors.asp)

Selector

`p`
Selects all `<p>` elements

`.intro`
Selects all elements with class="intro"

`.name1.name2`
Selects all elements with both _name1_ and _name2_ set within its class attribute

`.name1 .name2`
Selects all elements with _name2_ that is a descendant of an element with _name1_

`#firstname`
Selects the element with id="firstname"

`*`
Selects all elements

`p.intro`

Selects all `<p>` elements with class="intro"

`div, p`
Selects all `<div>` elements _and_ all `<p>` elements

to do (A OR B) AND C
`ac, bc`

`div p`
Selects all `<p>` elements _inside_ `<div>` elements

`div > p`
Selects all `<p>` elements where the parent is a `<div>` element

`div + p`
Selects the first `<p>` element that is placed _immediately after_ `<div>` elements

`p ~ ul`
Selects every `<ul>` element that is _preceded_ by a `<p>` element

`[target]`
Selects all elements with a `target` attribute

`[target=_blank]`
Selects all elements with `target="_blank"`

`[title~=flower]`
Selects all elements with a title attribute containing the word "flower"

`|=` value starts with
`^=` value begins with
`$=` value ends with
`*=` contains substring



