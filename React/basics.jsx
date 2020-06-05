/*
File structure should be:

Project
    /components
    index.html
    index.jsx
    style.css


HTML:
<html>

    <head>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div id="root"></div>
        <script src="index.pack.js"></script>
    </body>

</html>


THE FOLLOWING IS AN EXAMPLE OF index.jsx
*/


import React from "react" // needed to recognize JSX
import ReactDom from "react-dom"

import MyInfo from "./components/MyInfo"

ReactDom.render(<MyInfo />, document.getElementById("root"))



function MyInfo() {
    return (
        <div>
            <h1>Ian</h1>
            <p>Coding is Tao</p>
            <ul>
                <li>Be like water</li>
                <li>Do not contend</li>
                <li>Empty minds and fill bellies</li>
            </ul>
        </div>
    )
}


ReactDom.render(<MyInfo />, document.getElementById("root"))




/*
function MyApp() {
    return (
        <ul>
            <li>one</li>
            <li>two</li>
            <li>three</li>
        </ul>
    )
}

ReactDom.render(<MyApp />, document.getElementById("root"))
*/




/*
ReactDom.render(
    <ul>
        <li>one</li>
        <li>two</li>
        <li>three</li>
    </ul>,
    document.getElementById("root")
)
*/


// ReactDom.render(<div><h1>Hello world!</h1><p>This is a paragraph</p></div>, document.getElementById("root"))

