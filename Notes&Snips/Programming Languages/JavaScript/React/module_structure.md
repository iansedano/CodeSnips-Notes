```javascript
/*
File structure should be:

Project
    /components
    index.html
    index.jsx
    style.css


*/


import React from "react"

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

export default MyInfo // exposing component (this file) to others.


// now in the index file

import <function> from "<filename_path>"
```