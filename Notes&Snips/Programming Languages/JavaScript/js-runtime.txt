https://medium.com/jspoint/how-javascript-works-in-browser-and-node-ab7d0d09ac2f

Lack of typed system is what makes it slow...

JS not designed for performance, but had to work inside browser and provide API to work with DOM.

ECMAScript specifies how JS should be implemented, but the actual running is left to the browser. Firefox uses spiderMonkey, chromium uses V8 as does Node and Electron.

To understand V8 engine in depth
https://alligator.io/js/v8-engine/

Many strategies are used to make the JS more efficient, both by compiling it well at run time, and making it more efficient as it is running by detecting which parts are slow aka "hot".

----

JS at runtime.

JS is SINGLE THREADED and BLOCKING
i.e. it will do one task at a time and not do anything else until that is done.

I.e. if you can block the browser by putting this into the console

	while(true){}
	
Modern browsers use separate JS threads per TAB, or per DOMAIN.
Chrome implements process-per-site policy.

Each JS thread/process (main execution thread) has one stack and one heap. Each thread also has an EVENT LOOP and a CALLBACK QUEUE. Callback Queue is aka as message q, or task q.

The browser also runs other applications simultaneously. It has a thread pool which assigns threads to Web APIs, DOM Event Callbacks etc. so that it can send HTTP requests, listen to DOM events, delay executions, cache, db storage etc.

The fetch API is provided by the browser to send HTTP. These APIs are known as Web APIs, since they don't form part of the ECMA spec.

The Web APIs are *asynchronous* - you can ask them to do something and return the data once done.
When doing this you have to provide a CALLBACK function. This is to execute some JS in the main thread once it gets back.

When you call a function, it gets pushed to the stack.
If it contains WebAPI call, JS will delegate control of it to WebAPI with a callback function and move on with the stack until it hears back.
The callback function is with the WebAPI on a separate thread.

Once done, the WebAPI binds the result of that job to the callback function and a message and publishes the message to the message queue aka callback queue.

The only job of the event loop is to look at the callback queue and once there is something in there, to push it to the main stack.
The event loop pushes one callback function at a time when the stack is empty.

EXAMPLE using setTimeout WebAPI

setTimeout(callbackFunction, timeInMilliseconds);

This will executre once the stack is empty after the timeInMilliseconds has passed. So it could take much longer than the timeInMilliseconds.

http://latentflip.com/loupe/ - for visualizing JS



Apart from an event loop and callback queue, a modern JavaScript engine also has a microtask queue that is used for promises. You can also learn about it from the article below.
https://itnext.io/javascript-promises-and-async-await-as-fast-as-possible-d7c8c8ff0abc