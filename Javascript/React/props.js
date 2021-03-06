import React from "react"


function ContactCard(props) {
    return(
        <div className="contact-card">
                <img src={props.imgUrl}/>
                <h3>{props.name}</h3>
                <p>Phone: {props.phone}</p>
                <p>Email: {props.email}</p>
        </div>
    )
}

function App() {
    return (
        <ContactCard 
            name="Mr. Whiskerson" 
            imgUrl="http://placekitten.com/300/200" 
            phone="(212) 555-1234" 
            email="mr.whiskaz@catnap.meow"
        />
            
        <ContactCard 
            name="Fluffykins" 
            imgUrl="http://placekitten.com/400/200" 
            phone="(212) 555-2345" 
            email="fluff@me.com"
        />
        
        <ContactCard 
            name="Destroyer" 
            imgUrl="http://placekitten.com/400/300" 
            phone="(212) 555-3456" 
            email="ofworlds@yahoo.com"
        />
        
        <ContactCard 
            name="Felix" 
            imgUrl="http://placekitten.com/200/100" 
            phone="(212) 555-4567" 
            email="thecat@hotmail.com"
        />
    )
}

export default App

