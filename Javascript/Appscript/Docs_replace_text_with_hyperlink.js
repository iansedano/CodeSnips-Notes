function replaceTextKeepHyperlink(textToReplace, ReplacementText) {
    var body = DocumentApp.getActiveDocument().getBody();
    var searchResult = body.findText(textToReplace);
    
    while (searchResult != null) {
      
      // Getting info about result
      var foundText = searchResult.getElement().asText();
      var start = searchResult.getStartOffset();
      var end = searchResult.getEndOffsetInclusive();
      var hyperlink = searchResult.getElement().getLinkUrl(start);
      
      // Modifying text
      foundText.deleteText(start, end)
      foundText.insertText(start, ReplacementText)
      foundText.setLinkUrl(start, start + ReplacementText.length - 1, hyperlink)
      
      // Moving to next search result
      searchResult = body.findText(textToReplace, searchResult);
    }
  }