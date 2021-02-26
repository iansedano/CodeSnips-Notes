console.log('from foreground');

let title = document.getElementsByTagName('h1')[0]
title.classList.add('spinspin')

let first = document.createElement('button');
first.innerText = "SET DATA";
first.id = "first";

let second = document.createElement('button');
second.innerText = "HELLO BACKEND";
second.id = "second";

document.querySelector('body').appendChild(first);
document.querySelector('body').appendChild(second);

first.addEventListener('click', () => {
    chrome.storage.local.set({"password": "123"});
    console.log("data set");
})

second.addEventListener('click', () => {
    chrome.runtime.sendMessage({"message": "check the storage"}, response => console.log(response));
    console.log("message sent");
})