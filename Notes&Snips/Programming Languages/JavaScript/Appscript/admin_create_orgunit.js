function createOU(name, parentPath) {
  
  var token = ScriptApp.getOAuthToken();
  var apiKey = 'apikey';
  var endPoint = 'https://www.googleapis.com/admin/directory/v1/customer/C0156mxvl/orgunits';
  var headers = {
    'Accept':'application/json',
    'Authorization': 'Bearer ' + token
  };
  var data = {
      "name": name,
      "parentOrgUnitPath": parentPath
    }
  var options = {
    'method': 'POST',
    'headers': headers,
    'contentType': 'application/json',
    'muteHttpExceptions': true,
    "blockInheritance": false,
    "payload": JSON.stringify(data)
  }
  Logger.log(parentPath, name)
  var response = UrlFetchApp.fetch(endPoint, options);
  Logger.log(response);
}