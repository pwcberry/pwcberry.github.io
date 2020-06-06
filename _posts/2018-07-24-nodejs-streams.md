---
layout: post
title: Node.js streams
category: web
tags: node.js streams javascript
excerpt: While working on a side project, I delved into Node.js streams.
---

# Node.js streams

While working on a side project I uncovered a source of data that had been gzipped. The compressed CSV data was 13 MB and uncompressed close to 33.4 MB. I considered that this could be too big to handle completely in memory so I explored the [Stream API](https://nodejs.org/api/stream.html) in Node.js.

Back in the day when I was using Gulp to generate the assets I needed for a web application, I came across the concept of streams. Gulp had wrappers and other objects that dealt with the underlying Stream implementation. It seemed such a natural way of dealing with hundreds of lines of code and dozens of files. In other applications I used the libraries that underpin Gulp such as [through2](https://github.com/rvagg/through2).

Nonetheless I was intrigued by the Stream API. At first I was daunted by the documentation of the Stream API. I read [articles](#references) in which some authors declared they weren't happy with the API (some of these are now quite old). There are guides I read that explained how to go about using streams. Eventually the penny dropped.

To define how a stream should behave, you can inherit from one of the base classes or use the "Simplified Constructor approach". When using inheritance, you must implement:

* For `Readable` streams, the `_read` method
* For `Writable` streams, the `_write` method

You can also define a `_destroy` method to clean up any underlying resources before the stream object is garbage collected.

To use streams, you would then join a readable stream to a writable stream by using the `pipe` method of the `Readable` stream. 
You can use events, but the [documentation recommends pipes](https://nodejs.org/api/stream.html#stream_choose_one_api_style).
Nonetheless, I found error handling easier to comprehend when they were defined as stream events.

## The problem

For my side project, what I had in mind was to process the data like this:

```
	GZIP > CSV > JSON output
```

Node.js has the built-in module [`zlib`]() for handling the g-zipped archive. It has the method `createGunzip` which produces a [`Duplex`](https://nodejs.org/api/stream.html#stream_duplex_and_transform_streams) stream. This is useful because it is both a readable and writable stream. Its input is a gzip file and it writes to output `Buffer` chunks. 

Using the library [`csv-streamify`]() I convert the buffers into objects that represent the decompressed CSV rows. The properties of each object correspond to the columns that are defined in the first row of the CSV file.

Once I have the raw data as JavaScript objects, I define a custom class that extends the `Transform` stream class to convert the CSV objects into the data structures I need for my application. I have also defined a custom `Writable` - `JsonWriter` - to output the data as JSON. Thus the code to perform the work looks like:

```javascript
const fs = require("fs");
const zlib = require("zlib");
const csv = require("csv-streamify");
const CustomTransformer = require("./custom-transformer");
const JsonWriter = require("./json-writer");

module.exports = () => {
    const input = fs.createReadStream("path/to/input.gz");
    const gzip = zlib.createGunzip();
    const csvParser = csv({columns: true});
    const transformer = new CustomTransformer(options);
    const output = new JsonWriter("path/to/output.json");

    return new Promise((resolve, reject) => {
        gzip.on("error", (error) => reject(error));
        csvParser.on("error", (error) => reject(error));
        transformer.on("error", (error) => reject(error));
        output.on("error", (error) => reject(error)).on("finish", () => resolve(output.counter));

        input.pipe(gzip).pipe(csvParser).pipe(transformer).pipe(output);
    });
}
```

The code example above also shows how I wrapped the components of the stream transformation in a `Promise` to take advantage of the events raised through the `Stream` API. The code that uses the Promise can also handle any errors.

## Coding a custom `Transform` stream

A **`Transform`** stream is a duplex stream: it takes as input a `Writable` stream and then emits new data to a `Readable` stream. It may seem a little odd to think of it this way, but consider it this way: the Transform pulls data from the stream as it is _being written to_ by an entity upstream, and then pushes data into a stream that _is read from_ by an entity downstream.

The [documentation has three examples for implementing a Duplex stream](https://nodejs.org/api/stream.html#stream_implementing_a_duplex_stream). We will briefly cover two of the examples.

### Extending the `Transform` class

To specify that objects form the input and output streams, the super constructor must receive an object with the properties `readableObjectMode` and `writableObjectMode` set to true. Otherwise you will receive and emit `Buffer`.

The crucial method to implement for this type of Stream is the `_transform` method. This is called by the internal Readable methods and this is where the conversion from input to output takes place.

```javascript
class CustomTransformer extends Transform {
    constructor(options) {
        super({
            readableObjectMode: true,
            writableObjectMode: true
        });

        // Define other properties and rules
    }

    _transform(data, encoding, callback) {
        try {
            let inputData = null;

            // Ensure the input data is or becomes a JavaScript object
            if (typeof data === "string" || data instanceof Buffer) {
                inputData = JSON.parse(data.toString());
            } else if ((typeof data === "object") && (data !== null)) {
                inputData = data;
            }

            if (inputData !== null) {
                // Send data to output (Readable) stream
                this.push(this._mapToOutput(inputData));
            }

            callback();
        } catch (error) {
            callback(error);
        }
    }

    _mapToOutput(input) {
        // Return new object that has transformed the data of the input.
        // The data could be different according to rules defined in the constructor.
    }
}
```

### Using the "Simplified Constructor" approach

The other method for instantiating a `Transform` is to give the constructor an object that defines `transform` method. For example:

```javascript
const transformer = new Transform({
    transform(data, encoding, callback) {
        // Do the data conversion
    }
});
```

This method is useful if the purpose of the object is to convert an input to output when there is no need to manage state during the transformation.

## Coding a custom `Writable`

The beauty of writing your own `Writable` class is you have the ability to manage the internal state of the stream as it receives input data. This is useful when the output changes according to some rules. 

For this example I extended the `Writable` class that is defined in "object mode" so it does not emit `Buffer` chunks:

```javascript
class JsonWriter extends Writer {
    constructor(options) {
        super({objectMode: true});

        this._fileStream = fs.createWriteStream(options.filename);

        // Keep track of the number of writes
        this.counter = 0;
    }

    _write(chunk, encoding, callback) {
        // Write to underlying stream
        callback();
    }

    _final(callback) {
        // Clean up
        this._fileStream.end();
        callback();
    }
}
```

The crucial methods here are `_write` and `_final`. These are called internally by the API when it calls the base `write()` method. 

## Summary

I enjoyed my first attempt at using streams for processing a large dataset. In this application I also added performance markers to see how long it took for Node.js to execute the code to transform the data. I was happy that for 33 MB it was only a matter of seconds!

<h2 id="references">References</h2>

[Node.js Streams: Everything you need to know](https://medium.freecodecamp.org/node-js-streams-everything-you-need-to-know-c9141306be93)

[Why I don't use Node's core 'stream' module](https://r.va.gg/2014/06/why-i-dont-use-nodes-core-stream-module.html)

[The Definitive Guide to Object Streams in Node.js](https://community.risingstack.com/the-definitive-guide-to-object-streams-in-node-js/)

[Stream Handbook](https://github.com/substack/stream-handbook)

[Node.js Stream API](https://nodejs.org/api/stream.html)

