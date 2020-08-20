// Fetch uses GET by default
// Response is an OBJECT, a 'PROMISE'

/* definition - CORS - Cross-Origin Resource Sharing
uses additional HTTP headers to give a webapp
access to resources from different origin.
If the fetch request is a CORS one, then the
headers are restricted to 
'Cache-Control'
'Content-Language'
'Content-Type'
'Expires'
'Last-Modified'
'Pragma'
CORS requests will be accepted if other origin
retuns with appropriate headers.
*/
let response = fetch(url);

fetch(url)
  .then((response) => {
    // handle response
  })
  .catch((error) => {
    // handle error
  });

// If text

fetch("/readme.txt")
  .then((response) => response.text())
  .then((data) => console.log(data));

// using async await

async function fetchText() {
  let response = await fetch("/readme.txt");
  let data = await response.text();
  console.log(data);
}

console.log(response.status); // 200
console.log(response.statusText); // OK

/* OTHER METHODS
clone() - creates clone of response
json() - resolves promise with JSON
redirect() - creates new response with another url
text() - resolves with string
arrayBuffer() - resolves with array buffer
blob() - resolves with blob
formData()

*/

// EXAMPLE

fetch("http://api.github.com/users/KrunalLathiya")
  .then((res) => res.json()) // resolves promise with json - also returns promise
  .then((json) => console.log(json));

fetch("users.json").then(function (response) {
  console.log(response.headers.get("Content-Type"));
  console.log(response.headers.get("Date"));
  console.log(response.type);
  console.log(response.url);
});

// EXAMPLE with cors

fetch("https://facebook.com/cors-enabled/some.json", { mode: "cors" })
    .then(function(response) {
        return response.text()
    });
    .then(function(text) {
        console.log('Request successful', text);
    })
    .catch(function(error) {
        log('Request failed', error)
    })

// https://appdividend.com/2018/08/20/javascript-fetch-api-example-tutorial/