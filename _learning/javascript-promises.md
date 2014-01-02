JavaScript Promises
===================

[Source: HTML5 Rocks](http://www.html5rocks.com/en/tutorials/es6/promises/)

Promises will be part of the ECMAScript 6 specification. The purpose of promises is to ensure actions are taken when a synchronous or asynchronous event has occured, and to act if the event ended in success or failure.

Promises will be available as part of DOM events.

A promise can be:

* __fulfilled__: The action relating to the promise succeeded
* __rejected__: The action relating to the promise failed
* __pending__: Action hasn't fulfilled or rejected yet
* __settled__: Action has been fulfilled or rejected

An object is considered to have a `thenable` interface if it is `Promise`-like, that is, it defines a `then` method.

Libraries have provided promises such as:

* [Q](https://github.com/kriskowal/q)
* [when](https://github.com/cujojs/when)
* [WinJS](http://msdn.microsoft.com/en-us/library/windows/apps/br211867.aspx)
* [RSVP.js](https://github.com/tildeio/rsvp.js)

The innate JavaScript API will be much closer to `RSVP.js`. These libraries implement standardised behaviour known as [Promises/A+](https://github.com/promises-aplus/promises-spec). jQuery has something similiar in the form of `Deferred`s, but they are not compliant with this spec.

A simple example:


```
var promise = new Promise(function(resolve, reject) {
	// do a thing, possibly async, thenÎíÎõ
    
	if (/* everything turned out fine */) {
		resolve("Stuff worked!");
	} else {
	    reject(Error("It broke"));
	}
});

// The then method takes 2 arguments:
// The 'success' or 'fulfilled' handler and
// The 'failure' or 'rejected' handler

promise.then(function(result) {
	console.log(result); // "Stuff worked!"
}, function(err) {
	console.log(err); // Error: "It broke"
});

```

It is also possible to achieve correct sequences with asynchronous behaviour.

See also
--------

[Shawn Wildermouth: JavaScript Promises](http://wildermuth.com/2013/8/3/JavaScript_Promises)

[Tutsplus: Promise-Based Validation](http://net.tutsplus.com/tutorials/javascript-ajax/promise-based-validation)