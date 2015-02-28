---
layout: post
title: Immutable object pattern
category: javascript
tags: javascript pattern node browser
excerpt: A pattern to produce immutable interfaces for modules.
published: false
---

{% highlight javascript %}

export function hexToRgb(value) {
	
	// r, g, b initialized about here

	return (function(r, g, b) {
		// Wrapped in IIFE to reduce scope
		// of arguments
		return Object.sealed({
			get r() {
				return r;
			},
			get g() {
				return g;
			},
			get b() {
				return b;
			},
			get rgb() {
				return 'rgb(' + r + ',' + g + ',' + b + ')';'
			}
		});
	})(r, g, b);

}

{% endhighlight %}