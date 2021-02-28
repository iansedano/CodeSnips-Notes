GET 
The GET method requests a representation of the specified resource. Requests using GET should only retrieve data. GET requests do not have a "BODY".

POST
The POST method is used to submit an entity to the specified resource, often causing a change in state or side effects on the server. The changes to be made on the server are usually included in the request body.

PUT
The PUT method replaces all current representations of the target resource with the request payload. PUT and PATCH are often used interchangeably out there in the real world. The changes to be made on the server are usually included in the request body.

PATCH
The PATCH method is used to apply partial modifications to a resource.

DELETE
The DELETE method deletes the specified resource.


The request types below are more of utility functions which are less commonly used on a day-to-day basis.

HEAD
The HEAD method asks for a response identical to that of a GET request, but without the response body.

OPTIONS
The OPTIONS method is used to describe the communication options for the target resource.

CONNECT
The CONNECT method establishes a tunnel to the server identified by the target resource.

TRACE
The TRACE method performs a message loop-back test along the path to the target resource.



Components of an HTTP Request:

Request URL: The endpoint to hit (the URL of the server to which you are making the request)

HTTP Method: The type of request that you're making (GET, POST, PUT, PATCH, DELETE)

Request Headers: These often include the type of data you're sending (ie, "content-type: application/json") to tell the server how to read your request. The headers also often include authorization and authentication information.

Request Body: The body hold the information that you're asking the server to create (POST) or update (PUT/PATCH). The body is often formatted in JSON and would appear like the block below if we were trying to create a new User record on the server:

 {
    "first_name" : "Ryan",
    "last_name" : "Desmond",
    "email" : "ryan@codingnomads.co"
} 