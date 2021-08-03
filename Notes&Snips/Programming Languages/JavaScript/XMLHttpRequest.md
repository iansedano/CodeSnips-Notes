```javascript
/* can fetch asynchronously or synchronously.
the third argument is the async argument on the
XMLHttpRequest.open() method. If set to true or
not specified, will be async.


responseType    response returns
'' (default)    Same as 'text'
'text'          String
'arraybuffer'   ArrayBuffer
'blob'          Blob
'document'      Document
'json'          Object

*/

let xhr = new XMLHttpRequest(); // ++++++++++++  INITIALIZE

    console.log(xhr.readyState) // 0

xhr.responseType = 'text'
xhr.open('GET', '/', false); // ++++++++++++  CONFIGURE - open( method, URL, async, userName, password ) 

xhr.onload = function () {
    console.log(xhr.response.byteLength); // 5468
}
xhr.onerror = () => {console.log("error")}
xhr.ontimeout = () => {console.log("timeout")}

xhr.send(); // ++++++++++++  SEND

    console.log(xhr.responseText.substring(0, 15)) // <!DOCTYPE html>
    console.log(xhr.readyState) // 1 .. 2 .. 3 .. 4
    console.log(xhr.status) // 200 / 404 / 500
    console.log(xhr.getAllResponseHeaders()) // all headers...



// JSON example

let jxhr = new XMLHttpRequest()

jxhr.onreadystatechange = () => {
    if (this.readyState == 4 && this.status == 200) {
        let data = JSON.parse(this.responseText);
        console.log(data)
    }
}

jxhr.open('GET', url, true)
jxhr.send()
```