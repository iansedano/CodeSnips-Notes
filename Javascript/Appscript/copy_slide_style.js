
function copyStyling() {
    // This is a standalone script
    let masterID = "1107dQEIAbZ8ipBi0wvU6cdy4OV7N2hURT5fjgOwm_vY";
    let childID = "1XvGARRBzXofsjrFJkl8SCmt3tQJ2nkw1n9MG3tr9fhU";
  
    // Master Slide Variables
    let masterPresentation = SlidesApp.openById(masterID);
    let masterSlide = masterPresentation.getSlides()[0];
    let masterElements = masterSlide.getPageElements();
    
    // Get style elements
    let masterBackground = masterSlide.getBackground();
    let masterSolidFill = masterBackground.getSolidFill().getColor();
    // etc
    // ...
    
    // Child Slide Variables
    let childPresentation = SlidesApp.openById(childID);
    let childSlide = childPresentation.getSlides()[0];
    let childElements = childSlide.getPageElements();
    
  
    // Updating the stylings for the page
    let childBackground = childSlide.getBackground();
    childBackground.setSolidFill(masterSolidFill);
    // etc
    // ...
  
    // Updating the stylings for each element on the page
    masterElements.forEach((element, i) => {
      childElements[i].setLeft(element.getLeft());
      childElements[i].setTop(element.getTop());
      // etc
      // ...
    });
  }