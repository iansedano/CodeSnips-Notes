function doPost(e){
    let jsonResponse;
  
    const ss = SpreadsheetApp.getActiveSpreadsheet();
    const ws = ss.getSheetByName('web')
    const headers = ws.getRange(1, 1, 1, ws.getLastColumn()).getValues()[0];
  
    const body = e.postData.contents;
    const bodyJSON = JSON.parse(body);
  
    jsonResponse = {"name": bodyJSON.name, "email": bodyJSON.email} // MODIFIED
    ws.appendRow([jsonResponse.name, jsonResponse.email]) // MODIFIED
  }
  I believe your main problem was with this line
  
  jsonResponse = ws.appendRow([bodyJSON.name, bodyJSON.email])
  If you see the appendRow method it says the return type is a Sheet. So in theory, without my modification, the next line should have returned an error. What do the executions in your Apps Script dashboard say? That said, it might have still been able to update the sheet.
  
  With this modified, your HTML successfully updated the script even though it threw a bunch of errors in the browser console.
  
  You don't need to explicitly return anything either for it to function, which is why I omitted it here.
  
  Modified HTML
  function afterSubmit(e) {
    url =
      "https://script.google.com/macros/s/<SCRIPT_ID>/exec";
    var name = document.getElementById("name");
    var email = document.getElementById("email");
    var info = {
      name: name.value,
      email: email.value,
    };
    console.log(info);
  
    fetch(url, {
      method: "POST",
      cache: "no-cache",
      mode: "no-cors", // to prevent CORS errors
      redirect: "follow",
      body: JSON.stringify(info),
    })
      .then((res) => console.log(res))
      .catch((err) => console.log(err));
    e.preventDefault(); // to prevent form from reloading page
  }
  
  document.getElementById("customerForm").addEventListener("submit", afterSubmit);
  
  Only thing added here was the mode: "no-cors".
  The e.preventDefault() at the end supressed a "Failed to Fetch" error I was getting because the form submit automatically reloaded the page. It seems that since the page reload happened before a response could come back it would just say "failed" although it was successful in updating the script.
  The returned object is actually blank because of the no-cors argument, see response type.
  If you wanted a more meaningful response, @Tanaike has in previous posts suggested something using async, like this:
  
  const fetchData = async (url, info) => {
    var json;
    try {
        const response = await fetch(url, {
          method: 'POST',
          body: JSON.stringify(info),
        });
        if (response != "") json = await response.json();
        console.log('Success:', JSON.stringify(json));
    } catch (e) {
        console.log('Errors:', e.message)
    }
    return json;
  }
  
  async function main() {
      const res = await fetchData(url, info);
      console.log(res);
  }
  
  main()
  Which would also require adding this to the Apps Script side:
  
  return ContentService.createTextOutput(JSON.stringify(e)).setMimeType(ContentService.MimeType.JSON);
  