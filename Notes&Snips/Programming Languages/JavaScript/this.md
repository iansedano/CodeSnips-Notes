```javascript
/*Implicit Binding
Explicit Binding
new Binding
window Binding*/

// Implicit Binding - most common

var me = {
    name: 'Ian'
    age: 30
    sayName: function(){
        console.log(this.name);
    }
}

me.sayName() // 'Ian'



//////


var sayNameMixin = function(obj) {
    obj.sayName = function() {
        console.log(this.name)
    }
}

var me = {
    name: 'Ian'
    age: 30
}

var you = {
    name: 'Joey'
    age: 28
}

me.sayName()
you.sayName()
```