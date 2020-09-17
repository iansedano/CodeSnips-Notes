// http://googleappscripting.com/doget-dopost-tutorial-examples/


// Return Text
function doGet() {
	textOutput = ContentService.createTextOutput("Hello World! Welcome to the web app.")
	return textOutput
}


// Return JSON
function doGet(){

	var appData = {
	"heading": "Hello World!",
	"body": "Welcome to the web app."
	};

	var JSONString = JSON.stringify(appData);
	var JSONOutput = ContentService.createTextOutput(JSONString);
	JSONOutput.setMimeType(ContentService.MimeType.JSON);

	return JSONOutput
}


// return HTML
function doGet(){

 var HTMLString = "<style> h1,p {font-family: 'Helvitica', 'Arial'}</style>"
 + "<h1>Hello World!</h1>"
 + "<p>Welcome to the Web App";

 HTMLOutput = HtmlService.createHtmlOutput(HTMLString);
 return HTMLOutput
}



// The doGet and doPost parameter take one default argument (commonly e),
// which holds information about the request “event.”
// From that e object, you can pull of information like query string values

function doGet(e){
	// use an externally hosted stylesheet
	var style = '<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">';

	// get the query "greeting" parameter and set the default to "Hello"
	var greeting = e.parameter.greeting || "Hello";
	// get the query "name" parameter and set the default to "World!"
	var name = e.parameter.name || "World";

	// create and use a template
	var heading = HtmlService.createTemplate('<h1><?= greeting ?> <?= name ?>!</h1>')

	// set the template variables
	heading.greeting = greeting;
	heading.name = name;

	var content = "<p>Welcome to the web app.</p>";

	var HTMLOutput = HtmlService.createHtmlOutput();
	HTMLOutput.append(style);
	HTMLOutput.append(heading.evaluate().getContent());
	HTMLOutput.append(content);

	return HTMLOutput
}


e.queryString	
// The value of the query string portion of the URL, or null if no query string is specified
name=alice&n=1&n=2

e.parameter	
//An object of key/value pairs that correspond to the request parameters. Only the first value is returned for parameters that have multiple values.
{"name": "alice", "n": "1"}

e.parameters	
//An object similar to e.parameter, but with an array of values for each key
{"name": ["alice"], "n": ["1", "2"]}

e.contextPath
//Not used, always the empty string.

e.contentLength	
//The length of the request body for POST requests, or -1 for GET requests
332

e.postData.length	
//The same as e.contentLength
332

e.postData.type	
//The MIME type of the POST body
text/csv

e.postData.contents	
//The content text of the POST body
Alice,21

e.postData.name	
//Always the value "postData"
postData