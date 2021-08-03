```javascript
import React from "react"

function Header() {
    return (
        <header className="navbar">My great site</header>
        <h1 style="color: #FF8C00">Hello!</h1> // INVALID
        <h1 style={{"color: #FF8C00"}}>Hello!</h1> // one curly brace for OBJECT in js, and another curly brace for JS
    )
}

// add "navbar" style to style.css


// also with vars

const styles = {
    color: "#FF8C00", 
    backgroundColor: "#FF2D00",
    fontSize: "200px" // note that fontsize is in camelcase and 200px is in quotes
  }
  
  return (
    <h1 style={styles}>Hello!</h1>
  )


// using css as js object

function App() {
  const date = new Date(2018, 6, 31, 15)
  const hours = date.getHours()
  let timeOfDay
  const styles = {
    fontSize: 30
  }
  
  if (hours < 12) {
    timeOfDay = "morning"
    styles.color = "#04756F"
  } else if (hours >= 12 && hours < 17) {
    timeOfDay = "afternoon"
    styles.color = "#2E0927"
  } else {
    timeOfDay = "night"
    styles.color = "#D90000"
  }
  
  return (
    <h1 style={styles}>Good {timeOfDay}!</h1>
  )
}
```