---
layout: post
title: SVG as Data URI
category: svg
tags: css svg
excerpt: Some things I discovered when attempting to create SVG Data URIs.
published: false
---

# SVG as Data URI

Base 64 Encoding

Chrome wasn't happy

Node modules

{% highlight svg %}
<svg>
	<circle cx="10" cy="10" r="10" fill="blue"/>
</svg>
{% endhighlight %}

after a couple of exmamples of SVG on codepen, i discovered that this worked across Chrome & IE:

{% highlight svg %}
<svg xmlns="http://www.w3.org/2000/svg">
	<circle cx="10" cy="10" r="10" fill="blue"></circle>
</svg>
{% endhighlight %}

