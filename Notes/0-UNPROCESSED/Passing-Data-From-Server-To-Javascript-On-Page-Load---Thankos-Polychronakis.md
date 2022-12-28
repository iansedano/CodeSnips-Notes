author: Thanos Polychronakis
date: Jan 2013


[link](https://thanpol.as/javascript/passing-data-from-server-to-javascript-on-page-load)

JavaScript app has no state to begin with (barring cookies and local storage)

You can have a global object that keeps all state info, yet when your app gets large, you will have to manage the whole global object to do anything stateful, so it starts to become a grind to develop it.

Its like having to cart around a desktop to send an email, you have your phone for that. Sure its not as capable, but at least you can send an email or respond to a message while at a cafe.

The order in which things are loaded starts to become an issue too.

Thanos proposes a receptor mechanism which

> controls the protocol of communication... each key in the passed data object will execute some code that will parse the data and make sense of it...each key is essentially **an operation**

```html
<script>
  var GLOBAL = [
    {op: 'isAuthenticated', val: false},
    {op: 'environment',     val: 'LIVE'},
    {op: 'langPack',        val: {/* Huge object */}}
    {op: 'langPack',        val: {/* Additional page specific */}}
  ];
</script>
<script type="text/javascript" src="ourApplication.js"></script>
```

The receptor engine should allow for the external parts of the JS App to hook to specific Operations.

```js
app.receptor.hook(op, callback, priority)
```

```html
<script type="text/javascript">
  var GLOBAL = [{op: 'isAuthenticated', val: false}];
</script>
<script type="text/javascript" src="ourApplication.js"></script>
<script type="text/javascript">
  // run the hooks
  app.receptor.runHooks();
</script>
```

[server2js](https://github.com/thanpolas/server2js)