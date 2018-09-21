---
layout: post
title: Node.js streams
category: systems
tags: node.js systems
excerpt: While working on a side project, I delved into Node.js streams.
---

# Node.js streams

While working on a side project I uncovered a source of data that had been gzipped. The compressed CSV data was 13 MB and uncompressed close to 33.4 MB. I considered that this could be too big to handle completely in memory so I explored the [Stream API](https://nodejs.org/api/stream.html) in Node.js.

Back in the day when I was using Gulp to generate the assets I needed for a web application, I came across the concept of streams. Gulp had wrappers and other objects that dealt with the underlying Stream implementation. It seemed such a natural way of dealing with hundreds of lines of code and dozens of files. In other applications I used the libraries that underpin Gulp such as [through2](https://github.com/rvagg/through2).

Nonetheless I was intrigued by the Stream API. At first I was daunted by the documentation of the Stream API. I read [articles](#References) in which some authors declared they weren't happy with the API (some of these are now quite old). There are guides I read that explained how to go about using streams. Eventually the penny dropped.

The Stream API provides classes to extend or instantiate with a consistent API that when you stick to pipes and event handlers these mechanisms are handled for you by the API.

The great thing about the Stream API is that you can deal with buffer chunks or objects.

For my side project, what I had in mind was to process the data like this:

	GZIP > CSV > JSON output

Node.js has the built-in module [`zlib`]() for handling the archive. It has the method `createGunzip` which produces a stream [`Duplex`](https://nodejs.org/api/stream.html#stream_duplex_and_transform_streams) object. This is useful becuase it is both a readable and writable stream. Its input is a gzip file and it writes as output `Buffer` chunks. 

Using the library [`csv-streamify`]() I convert the buffers into objects that represent the decompressed CSV rows. The properties of each object correspond to the columns that are defined in the first row of the CSV file.

Once I have the raw data as JavaScript objects, I define a custom class that extends the `Transform` stream class to convert the CSV objects into the data structures I need for my application. I have also defined a custom `Writable` - `JsonWriter` - to output the data as JSON. Thus the code to perform the work looks like this:

```javascript
const fs = require("fs");
const zlib = require("zlib");
const csv = require("csv-streamify");
const CustomTransformer = require("./custom-transformer");
const JsonWriter = require("./json-writer");

module.exports = () => {
    const input = fs.createReadStream("path/to/input.gz");
    const output = new JsonWriter("path/to/output.json");
    const transformer = new CustomTransformer(options);
    const csvParser = csv({columns: true});
    const gzip = zlib.createGunzip();

    return new Promise((resolve, reject) => {
        gzip.on("error", (error) => reject(error));
        csvParser.on("error", (error) => reject(error));
        transformer.on("error", (error) => reject(error));
        output.on("error", (error) => reject(error)).on("finish", () => resolve(output.counter));

        input.pipe(gzip).pipe(csvParser).pipe(transformer).pipe(output);
    });
}
```

The previous code example also shows how I wrapped the components of the stream transformation in a `Promise` to take advantage of the events raised through the `Stream` API. The code that uses the Promise can also handle any errors.

## Coding a custom `Transform` 

A **`Transform`** stream takes as input a `Writable` stream and then emits new data to a `Readable` stream. It may seem a little odd to think of it this way, but consider it this way: the Transform pulls data from the stream as it is _being written_ to by an entity upstream and then pushes data into a stream that can _be read_ from an entity downstream.

There are two approaches to creating a custom `Transform` stream. You can extend the class `Transform` or provide an object to the `Transform` constructor.

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
        // Return new object that has transformed 
        // the data of the input.
        // The data could be different according to 
        // rules defined in the constructor
    }
}
```

### Passing an object into the constructor

The other method for instantiating a `Transform` is to give the constructor an object that has methods defined on it. For example:

```javascript
const transformer = new Transform({
    transform(data, encoding, callback) {
        // Do the data conversion
    }
});
```

This method is useful if the purpose of the object is to convert an input to output when there is no need to manage state during the transformation.

## Coding a custom `Writable`

The beauty of writing your own `Writable` class is you have the ablity to manage the internal state of the stream as it receives input data. This is useful when the output changes according to some rules. 

As with a `Transform`, a `Writable` can be defined by extending the base class or by providing an object to the constructor. A `Writable` may also be defined in "object mode" so you can handle objects rather than `Buffer` chunks.

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

The crucial methods here are `_write` and `_final`. These are called internally as the implementation is called by the `write()` method. 

## Summary

I enjoyed my first attempt at using streams for processing a large dataset. In this application I also added performance markers to see how long it took for Node.js to execute the code to transform the data. I was happy that for 33 MB it was only a matter of seconds!

## References

[Node.js Streams: Everything you need to know](https://medium.freecodecamp.org/node-js-streams-everything-you-need-to-know-c9141306be93)

[Why I don't use Node's core 'stream' module](https://r.va.gg/2014/06/why-i-dont-use-nodes-core-stream-module.html)

[The Definitive Guide to Object Streams in Node.js](https://community.risingstack.com/the-definitive-guide-to-object-streams-in-node-js/)

[Stream Handbook](https://github.com/substack/stream-handbook)

[Node.js Stream API](https://nodejs.org/api/stream.html)

