https://css-tricks.com/snippets/css/a-guide-to-flexbox/



## Properties for parent

- `display`
	- `flex`
	- `inline-flex`

- `flex-direction`
	- `row`
	- `row-reverse`
	- `column`
	- `column-reverse`
- `flex-wrap`
	- `nowrap`
	- `wrap`
	- `wrap-reverse`
- `flex-flow` shorthand for `flex-direction`  and `flex-wrap`
- `justify-content`
	- `flex-start`
	- `flex-end`
	- `center`
	- `space-between`
	- `space-around`
	- `space-evenly`
	- some more but support is uneven...
- `align-items`
	- `flex-start`
	- `flex-end`
	- `center`
	- `stretch`
	- `baseline`
- `align-content`
	- `flex-start`
	- `flex-end`
	- `center`
	- `stretch`
	- `space-between`
	- `space-around`
- `gap`, `row-gap`, `column-gap`
	- value in px

## For children


- `order`
	- default is 0, set to a number
- `flex-grow`
	- default 1, set to number
- `flex-shrink`
	- default 1, set to number
- `flex-basis`
	- default `auto` set to size
- `flex`
	- shorthand for `flex-grow,` `flex-shrink` and `flex-basis`
- `align-self`
	- auto
	- flex-start
	- flex-end
	- center
	- baseline
	- stretch