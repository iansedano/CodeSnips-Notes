// Log name of files in user drive


function logFiles() {
  var files = DriveApp.getFiles();
  while (files.hasNext()) {
    var file = files.next();
    Logger.log(file.getName());
  }
}