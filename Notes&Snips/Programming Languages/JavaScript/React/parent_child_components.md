```javascript

// in Footer.js

import React from "react"

function Footer() {
    return (
        <footer>
            <h3>Copyrighto</h3>
        </footer>
    )
}


export default Footer

// In App.js

import React from "react"

import Footer from "./Footer"

function App() {
    return (
        <div>
        <h1>Hello</h1>
        <Footer /> // COMPONENT
        </div>
    )
}

export default App

/*

Convention is that components are in Capitalized camelcase
whereas html components are lowercase

*/

// in INDEX.js

import React from "react"
import ReactDOM from "react-dom"

import App from "./App"

ReactDOM.render(<App />, document.getElementById("root"))



```