console.log('from background');

chrome.tabs.onActivated.addListener(tab => {
    console.log(tab);
    chrome.tabs.get(tab.tabId, tabInfo => {
        console.log(tabInfo.url)
        if (/stackoverflow\.com/.test(tabInfo.url)){
            
            chrome.tabs.insertCSS(
                null,
                {file: 'styles.css'}
            )
            
            chrome.tabs.executeScript(
                null,
                {file: 'foreground.js'},
                () => console.log(" I injected a script!")
            )
        }
    })
})


chrome.runtime.onMessage.addListener((message, sender, response) => {
    console.log(message, sender, response)
    chrome.storage.local.get("password", value => console.log(value))
    response({message:"message recieved"})
})