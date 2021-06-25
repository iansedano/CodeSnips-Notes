
//  MAP
// The map() method is used for creating a new array from an existing one,
// applying a function to each one of the elements of the first array.

const myArray = [1, 2, 3, 4]

const myArrayTimesTwo = myArray.map((value, index, array) => {
    return value * 2;
})

console.log(myArray);
console.log(myArrayTimesTwo);


const songs = [
    { id: 1, name: "It Aint me Babe", artist: "Bob Dylan" },
    { id: 2, name: "Don't Think Twice", artist: "Bob Dylan" },
    { id: 3, name: "Them Changes", artist: "Thundercat" },
    { id: 4, name: "Brazilia", artist: "Febueder" },
    { id: 5, name: "Chess", artist: "Joon Moon" },
]


// previous to ES6
var allSongNames = songs.map(function(song) {
    return song.name;
})
console.log("\n+++All song names+++ \n" + allSongNames);

// ES6
var allSongNamesES6 = songs.map(i => { return i.name }) // arrow function
console.log(allSongNamesES6);

/// using util function to transform each value
var mySongFunc = i => i.name.toLowerCase();
var lowerCaseSongs = songs.map(mySongFunc);

console.log("\nlower case songs:")
console.log("\n+++lower case songs+++ \n" + lowerCaseSongs)

// FILTER
// The filter() method takes each element in an array
// and it applies a conditional statement against it.
// If this conditional returns true,
// the element gets pushed to the output array.
// If the condition returns false,
// the element does not get pushed to the output array.

// Example
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const evens = numbers.filter(i => i % 2 === 0);
console.log("\n+++ even numbers +++ \n" + evens)

// Another Example
const students = [
    { name: 'Quincy', grade: 96 },
    { name: 'Jason', grade: 84 },
    { name: 'Alexis', grade: 100 },
    { name: 'Sam', grade: 65 },
    { name: 'Katie', grade: 90 }
];

const studentGrades = students.filter(i => i.grade >= 90);
console.log("\n+++ student grades +++ \n" + studentGrades);


// REDUCE
// The reduce() method reduces an array of values down to just one value.
// To get the output value, it runs a reducer function on each element of the array.

/*
The callback argument is a function that will be called once for every item in the array.
This function takes four arguments, but often only the first two are used.

accumulator - the returned value of the previous iteration
currentValue - the current item in the array
index - the index of the current item
array - the original array on which reduce was called

after the function comes another  optional argument
initialValue
	If provided,
	it will be used as the initial accumulator value in the first call
	to the callback function.

*/


// Example
const moreNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

const sum = moreNumbers.reduce(function(sum, itemValue) {
    return sum + itemValue;
}, 0); // this is the initialValue

console.log("\n+++ SUM +++ \n" + sum)

// Another example

var pets = ['dog', 'chicken', 'cat', 'dog', 'chicken', 'chicken', 'rabbit'];

var petCounts = pets.reduce(function(list, pet) {
    if (!list[pet]) { // if item value does not exist in list
        list[pet] = 1;
    } else {
        list[pet]++;
    }
    return list;
}, {}); // initial value is empty object

console.log("\n+++ pet count +++ \n" + petCounts);



// forEach
console.log("\n+++ FOR EACH +++\n")

var list = [1, 2, 3]

list.forEach((item, index) => console.log(item, index))


// some - does any item in array meet my condition?

const myNumbers = [-1, -5, 6, 7, -20, 100]

const hasNegatives = myNumbers.some(i => i < 0)

console.log("\n+++ list has negatives? +++ \n" + hasNegatives) // true

// every - does every number meet condition?

const allNegatives = myNumbers.every(i => i < 0)

console.log("\n+++ is list all negative? +++ \n" + allNegatives) // false

// find - if finds item, returns item

const objects = [{ id: 'a' }, { id: 'b' }, { id: 'c' }, { id: 'd' }]
const found = objects.find(i => i.id === 'b')
console.log("\n+++ item found is: +++ \n" + found) // returns { id: 'b' } if cannot find, will return undefined

// find index

const objects2 = [{ id: 'a' }, { id: 'b' }, { id: 'c' }, { id: 'd' }]
const foundIndex = objects.findIndex(i => i.id === 'b')
console.log("\n+++ index of item found is: +++ \n" + foundIndex) // returns 1