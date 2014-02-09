Full-Stack JavaScript with MEAN and Yeoman
==========================================

[Source: Addy Osmani](http://addyosmani.com/blog/full-stack-javascript-with-mean-and-yeoman/)

MEAN:

__M__: MongoDB
__E__: Express
__A__: AngularJS
__N__: NodeJS

This is JavaScript and JSON all the way.

The front-end - represented here with AngularJS - can also be implemented with other client-side frameworks such as Backbone.js and Ember.js.

### Why MongoDB

* JSON objects are stored as documents and collections
* Weakly-typed; compared to SQL which is strongly-typed
* Consider the trade-off between performance and reliability

### Why Express

* Simple API that provides an abstraction on top of Node's HTTP APIs
* Templating with Jade or Mustache
* Automated HTTP header handling
* Middleware for the request or response pipelines
* XSS prevention tools
* Utility functions for the POST request body

### Boilerplate for MEAN stack

* [mean.io](http://mean.io/)

### Yeoman and the MEAN stack

* Yo scaffolds the application
* Grunt configuration for builds
* Bower for dependency management

There are Yeoman generators available for scaffolding; the generators determine what products and technologies are used.

* `generator-angular-fullstack`
* `generator-meanstack`
* `generator-mean-seed`
* `generator-klei`
* `ultimate-seed-generator`

Remember, full-stack JavaScript may not necessarily be the best solution. Always consider the requirements, for the present and the future.


See also
--------

[Introduction to the MEAN stack](http://www.smashingboxes.com/introduction-to-the-mean-stack-video/)

[Introducing the MEAN stack](http://blog.mongodb.org/post/49262866911/the-mean-stack-mongodb-expressjs-angularjs-and)

[Addy Osmani: Checking Front-End Dependencies](http://addyosmani.com/blog/checking-in-front-end-dependencies/)
