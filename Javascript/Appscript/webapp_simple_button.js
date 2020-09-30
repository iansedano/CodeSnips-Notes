
// SCRIPT

function doGet(e) {
    return HtmlService.createHtmlOutputFromFile("page");
  }
  
  
function testFunc() {
    Logger.log("someone clicked") 
}



// HTML "page"
  <body>
    <h1>Hello</h1>
    <button id="btn">Run Function</button>
    <script>
    document.getElementById("btn").addEventListener("click", doStuff);
    function doStuff(){
    google.script.run.testFunc(); 
    };
    </script>
  </body>

