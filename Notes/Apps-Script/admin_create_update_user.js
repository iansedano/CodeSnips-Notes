function createUser(name, lastName, email, password) {
  var newUser = {
    primaryEmail: email,
    name: {
      givenName: name,
      familyName: lastName
    },
    password: password
  };
  newUser = AdminDirectory.Users.insert(newUser);
  Logger.log('User %s created with ID %s.', newUser.primaryEmail, newUser.id)
}

function updateUser(userKey, data) {
  
  var token = ScriptApp.getOAuthToken();
  var apiKey = 'apikey';
  var endPoint = 'https://www.googleapis.com/admin/directory/v1/users/' + userKey;
  Logger.log(endPoint)
  var headers = {
    'Accept':'application/json',
    'Authorization': 'Bearer ' + token
  };

  var options = {
    'method': 'PUT',
    'headers': headers,
    'contentType': 'application/json',
    'muteHttpExceptions': true,
    "blockInheritance": false,
    "payload": JSON.stringify(data)
  }
  Logger.log(data)
  var response = UrlFetchApp.fetch(endPoint, options);
  Logger.log(response);
  
}