function main() {
  
  var imgUrls = ["https://i.imgur.com/tKAMmTJ.jpg",
                 "https://artsinspiration.files.wordpress.com/2012/03/photoshopped-fruit-08.jpg",
                 "https://bigmemes.funnyjunk.com/pictures/The+legendary+fruits+i+was+extremely+bored+so+i+photoshopped_24ff4b_5384704.png",
                 "https://artsinspiration.files.wordpress.com/2012/03/photoshopped-fruit-3.jpg",
                 "https://pm1.narvii.com/6353/fa665258793fbc24ed52853f4b4415908afad781_hq.jpg",
                 "https://thumbs.dreamstime.com/z/background-freshly-yellow-strawberries-directly-above-background-freshly-harvested-strawberries-directly-above-front-up-140504004.jpg",
                 "https://www.serebii.net/swordshield/pokemon/474.png",
                 "https://i1.wp.com/techweez.com/wp-content/uploads/2017/06/avocado-e1497340376589.jpg"]
  
  var responses = [];
  for (var i = 0; i < imgUrls.length; ++i) {
    responses[i] = UrlFetchApp.fetch(imgUrls[i]);
  }
  
  var imgBlobs = [];
  for (var i = 0; i < imgUrls.length; ++i) {
    imgBlobs[i] = responses[i].getBlob();
  }
  
  var name1 = "hitFromPipe";
  var name2 = "howToCode";

  var dir1 = DriveApp.createFolder(name1);
  var dir2 = DriveApp.createFolder(name2);
  
  for (var i = 0; i < 4; ++i) {
    dir1.createFile(imgBlobs[i]);
  }
  
  for (var i = 4; i < 8; ++i) {
    dir2.createFile(imgBlobs[i]);
  }
  
  dir1.moveTo(dir2);

}
