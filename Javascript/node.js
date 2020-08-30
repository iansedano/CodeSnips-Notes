/*https://stackoverflow.com/questions/24974621/what-is-a-node-in-javascript

A "node", in this context, is simply an HTML element.
The "DOM" is a tree structure that represents the HTML of the website,
and every HTML element is a "node". See Document Object Model (DOM).

More specifically, "Node" is an interface that is implemented by
multiple other objects, including "document" and "element".
All objects implementing the "Node" interface can be treated
similarly. The term "node" therefore (in the DOM context)
means any object that implements the "Node" interface. Most
commonly that is an element object representing an HTML element.


https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model

https://developer.mozilla.org/en-US/docs/Web/API/Node

*/

/*
<div class="parent">
    <div class="child"></div>
    <!-- --> 
    <div class="child"></div>
    <div class="child"></div>
    <div class="child"></div>
    <div class="child"></div>
    <div class="child"></div>
</div>
<script> */
var parent = document.querySelector('.parent')
console.log(parent.childNodes) // returns a list of all child nodes
console.log(parent.children)   // returns a list of child **element** nodes only
//</script>

