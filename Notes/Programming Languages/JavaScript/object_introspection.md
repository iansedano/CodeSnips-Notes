```javascript
// https://stackoverflow.com/questions/328382/how-to-do-javascript-object-introspection#328418

function listProperties(obj) {
    var propList = "";
    for(var propName in obj) {
       if(typeof(obj[propName]) != "undefined") {
          propList += (propName + ", ");
       }
    }
    alert(propList);
 }


 // Also

 JSON.stringify(obj)

 // OR

 Object.getOwnPropertyDescriptor(obj)
 Object.getOwnPropertyNames(obj)
 
 Object.getOwnPropertyDescriptor(err, 'message')
 Object.getOwnPropertyNames(err)
```