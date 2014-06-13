---
layout: book
title: Refactoring - Composing Methods
permalink: /rmit/books/refactoring/chapter-06/
book_title: Refactoring - Improving the Design of Existing Code
book_authors: Martin Fowler
book_publisher: Addison-Wesley, 2000
---

# Composing Methods

## Inline Method

A method's body is just as clear as its name.

_Put the method's body into the body of its callers and remove the method._

### Before

{% highlight Java %}
int getRating() {
	return (moreThanFiveLateDeliveries()) ? 2 : 1;
}
boolean moreThanFiveLateDeliveries() {
	return _numberOfLateDeliveries > 5;
}
{% endhighlight %}

### After

{% highlight Java %}
int getRating() {
	return (_numberOfLateDeliveries > 5) ? 2 : 1;
}
{% endhighlight %}


<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-03/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
		<li class="next-chapter"><a href="../chapter-07/">Next chapter</a></li>
	</ul>
</nav>