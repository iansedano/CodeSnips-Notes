/**
 * This is a wrapper around the attribute functions
 * this allows setting one attribute at a time
 * based of a complete attribute object obtained
 * from another element. This makes it far more
 * reliable.
 */
const attributeKey = {
  FONT_SIZE : (o,s,e,a) => o.setFontSize(s,e,a),
  STRIKETHROUGH : (o,s,e,a) => o.setStrikethrough(s,e,a),
  FOREGROUND_COLOR : (o,s,e,a) => o.setForegroundColor(s,e,a),
  LINK_URL : (o,s,e,a) => o.setLinkUrl(s,e,a),
  UNDERLINE : (o,s,e,a) => o.setUnderline(s,e,a),
  BOLD : (o,s,e,a) => o.setBold(s,e,a),
  ITALIC : (o,s,e,a) => o.setItalic(s,e,a),
  BACKGROUND_COLOR : (o,s,e,a) => o.setBackgroundColor(s,e,a),
  FONT_FAMILY : (o,s,e,a) => o.setFontFamily(s,e,a)
}

/**
 * Replace textToReplace with replacementText
 * Will reatain formatting and hyperlinks
 */
function replaceTextPlus(textToReplace, replacementText) {

  // Initializing
  let body = DocumentApp.getActiveDocument().getBody();
  let searchResult = body.findText(textToReplace);

  while (searchResult != null) {

    // Getting info about result
    let foundElement = searchResult.getElement();
    let start = searchResult.getStartOffset();
    let end = searchResult.getEndOffsetInclusive();

    // This returns a complete attributes object
    // Many attributes have null as a value
    let attributes = foundElement.getAttributes(start);

    // Replacing text
    foundElement.deleteText(start, end);
    foundElement.insertText(start, replacementText);

    // Setting new end index
    let newEnd = start + replacementText.length - 1

    // Set attributes for new text skipping over null values
    // This requires the constant defined at the top.
    for (let a in attributes) {
      if (attributes[a] != null) {
        attributeKey[a](foundElement, start, newEnd, attributes[a]);
      }
    }

    // Modifies the actual searchResult so that the next findText
    // starts at the NEW end index.
    try {
      let rangeBuilder = DocumentApp.getActiveDocument().newRange();
      rangeBuilder.addElement(foundElement, start, newEnd);
      searchResult = rangeBuilder.getRangeElements()[0];
    } catch (e){
      Logger.log("End of Document")
      return null
    }

    // searches for next result
    searchResult = body.findText(textToReplace, searchResult);
  }
}

function test(){

  replaceTextPlus("Google", "Gougley")
  replaceTextPlus("occurrences", "happenings")
  replaceTextPlus("wrapper", "mixwrapper")
}