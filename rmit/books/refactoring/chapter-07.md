---
layout: book
title: Refactoring - Moving Features Between Objects
permalink: /rmit/books/refactoring/chapter-07/
book_title: Refactoring - Improving the Design of Existing Code
book_authors: Martin Fowler
book_publisher: Addison-Wesley, 2000
---

# Moving Features Between Objects

## Extract Class

You have one class doing work that should be done by two.

_Create a new class and move the relevant fields and methods from the old class into the new class._


## Inline Class

A class isn't doing very much.

_Move all its features into another class and delete it._


## Hide Delegate

A client is calling a delegate class of an object.

_Create methods on the server to hide the delegate._

### Motivation

Encapsulations means that objects need to know less about other parts of the system.

## Introduce Foreign Method

A server class you are using needs an additional method, but you can't modify the class.

_Create a method in the client class with an instance of the server class as its first argument._

### Before

{% highlight Java %}
Date newStart = new Date(prevousEnd.getYear(), 
	previousEnd.getMonth(), previousEnd.getDate() + 1);
{% endhighlight %}

### After

{% highlight Java %}
Date newStart = nextDate(previousEnd);

// introduced method
private static Date nextDay(Date arg) {
	return new Date(prevousEnd.getYear(), 
		reviousEnd.getMonth(), previousEnd.getDate() + 1);
}
{% endhighlight%}

## Introduce Local Extension

A server class you're using needs several additional methods, but you can't modify the class.

_Create a new class that contains these extra methods. Make this extension class a subclass or a wrapper of the original._



<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-06/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
		<li class="next-chapter"><a href="../chapter-08/">Next chapter</a></li>
	</ul>
</nav>