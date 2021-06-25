The leaky abstraction
Using new and advanced features of DOM can be buggy
CSS animations can be problematic
Focus management seems buggy too


Is a system whereby a representation of the DOM is managed by the program. It can in places be a simplified or more complicated version of the DOM. With ReactDOM, the actual DOM is compared with the Virtual DOM and if there are any differences, only those parts that are different are rendered. This prevents the whole page having to be rendered again.

The process of comparing and updating is called reconciliation. This is what React is famous for. Basically as a developer all you need to worry about is the `render` function and ReactDOM will do all the hard work for you.

This supports the declarative nature of React. You tell the UI what you want it to be and ReactDOM will make sure its updated correctly.


https://stackoverflow.com/questions/21965738/what-is-virtual-dom
> React creates a tree of custom objects representing a part of the DOM. For example, instead of creating an actual DIV element containing a UL element, it creates a React.div object that contains a React.ul object. It can manipulate these objects very quickly without actually touching the real DOM or going through the DOM API. Then, when it renders a component, it uses this virtual DOM to figure out what it needs to do with the real DOM to get the two trees to match.

> You can think of the virtual DOM like a blueprint. It contains all the details needed to construct the DOM, but because it doesn't require all the heavyweight parts that go into a real DOM, it can be created and changed much more easily.

> [Chuck](https://stackoverflow.com/users/50742/chuck)

