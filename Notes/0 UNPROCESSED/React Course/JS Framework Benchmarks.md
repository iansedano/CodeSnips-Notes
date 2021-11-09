Why use frameworks at all?

[https://github.com/krausest/js-framework-benchmark](https://github.com/krausest/js-framework-benchmark)

As you can see, Vanilla JS is still the fastest (at least with most things) - if everyone was really after speed, then they would probably go for a mixture of Vanilla and Midori.

Yet runtime speed, or redered speed is sometimes not the priority.

It is too soon to say exactly why React has come to dominate the Framework scene, yet frameworks in and of themselves have always been used, from C++ to JavaScript. Whenever a complex application needs to be built fast, and to be able to adapt to change fast, a framework that abstracts away some of the low level nuts and bolts is almost invariably used. At least to start with.

[[Jonathan Blow]] is a figure that has nothing but vitriol for frameworks, though for him, the whole web is a mess. It is something of an industry standard in the JavaScript world to say that 100ms latency is acceptable. Yet for Jonathan, this is totally mistaken. 100ms in isolation is acceptable, but the web tends to be built on a dizzying multitude of layers, each adding 100ms to the user experience. If you have been on Facebook, instagram, or any of the sites that use React, you might not be totally unconvinved this is true.

```js
d = document
c = d.createElement().bind(d)
c = (tag) => d.createElement(tag)
```