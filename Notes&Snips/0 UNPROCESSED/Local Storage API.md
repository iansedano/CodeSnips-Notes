---
tags: #javascript 
---

https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage

```
myStorage = window.localStorage;
```

```
localStorage.setItem('myCat', 'Tom');
```

```
const cat = localStorage.getItem('myCat');
```

```
localStorage.removeItem('myCat');
```

```
localStorage.clear();
```

```
localStorage.colorSetting = '#a4509b';
localStorage['colorSetting'] = '#a4509b';
localStorage.setItem('colorSetting', '#a4509b');
```
These work too

There is `sessionStorage` too, but that is cleared when the tab is closed

Keys and values must be in UTF-16 [`DOMString`](https://developer.mozilla.org/en-US/docs/Web/API/DOMString) format. Objects and integers are automatically converted to strings.

Specific to the protocol. If site loaded with HTTP and HTTPS will have two different local storages.

There is also a [`StorageEvent`](https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent) that will fire whenever a change is made to the localStorage

How much can you store?

https://stackoverflow.com/questions/10654148/how-much-data-can-a-browser-save-in-localstorage

> minimum of 5MB on desktop webkit, ff, ie, opera. IE actually let me write 1GB, yes 1 GB of data.

Play around with it

If you exceed you will get a 

```
QUOTA_EXCEEDED_ERROR
```

Though the official seems to be 5MB per domain.

With cookies, the max is 4KB.