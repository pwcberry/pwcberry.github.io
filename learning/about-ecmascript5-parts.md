Thinking About ECMAScript5 Parts
================================

[Source](http://tech.pro/tutorial/1671/thinking-about-ecmascript-5-parts)

Interesting points:

* No reserve word restrictions on object property names
* Array-like character access on strings
* `Array.isArray()` method (tests for Array.prototype)
* New array methods (that can also work on array-like objects)
	- `every`
	- `filter`
	- `forEach`
	- `indexOf`
	- `lastIndexOf`
	- `map`
	- `reduce`
	- `some`

For example:

	// Use forEach on string, logging each character
	[].forEach.call('ABC', console.log)

* New accessor object properties
	 - `get` and `set` accessors
	 - normal data attribute of same name causes error

For example:

	var myObject = (function() {
		var name = "";
		return {
			get name() {
				return name;
			},
			set name(value) {
				name = value;
			}
		};
	})();

* New methods for defining and modifying an objects properties:
	- `Object.defineProperty`
	- `Object.defineProperties`

* Explicitly specify inheritance using `Object.create()`


