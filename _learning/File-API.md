Reading files in JavaScript using the File API
==============================================

[Source](http://www.html5rocks.com/en/tutorials/file/dndfiles/)

* `File`: an individual file; provides readonly information such as name, file size, mimetype and a reference to the file handle.
* `FileList`: an array-like sequence of `File` objects.
* `Blob`: allows for slicing a file into byte ranges.


```
#! HTML

<input type="file" id="Files" name="files[]" multiple="multiple"/>

```

```
#! JavaScript
function handleFileSelect(ev) {
	 var files = ev.target.files; // FileList object
	 var list = Array.prototype.forEach.call(files, function(file) {
		// file is a File object
	 });
}

document.getElementById("Files").addEventListener("change", handleFileSelect, false);

```

After obtaining a `File` reference, instantiate a `FileReader` object to read its contents into memory. The reader's `onload` event is fired when complete, and the reader's `result` attribute can be used to access the file data.

`FileReader` has these asynchronous methods for reading a file:

* `FileReader.readAsBinaryString(Blob|File)`
* `FileReader.readAsText(Blog|File, opt_encoding)`
* `FileReader.readAsDataURL(Blob|File)
* `FileReader.readAsArrayBuffer(Blob|File)

`FileReader` also has these events:

* `onerror`
* `onprogress`
* `onabort`
* `onloadstart`

These events are useful for tracking the progress of a very large file.

See also
--------

[HTML5 Rocks: Exploring the FileSystem APIs](http://www.html5rocks.com/en/tutorials/file/filesystem/)

[HTML5 Rocks: The Synchronous FileSystem API for Workers](http://www.html5rocks.com/en/tutorials/file/filesystem-sync/)

