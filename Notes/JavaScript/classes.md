```javascript

class car {
  constructor(brand) {
    this.carname = brand;
  }
  present() {
    return "I am a " + this.carname;
  }
}

mycar = new car("Ford");
console.log(mycar.present());


///

class Model extends car {
  constructor(brand, mod) {
    super(brand);
    this.model = mod;
  }
  show() {
    return this.present() + ', it is a ' + this.model;
  }
}

mycar = new Model("Ford", "Mustang");
console.log(mycar.show());
```