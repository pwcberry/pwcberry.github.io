---
layout: book
title: Refactoring - Dealing with Generalization
permalink: /rmit/books/refactoring/chapter-11/
book_title: Refactoring - Improving the Design of Existing Code
book_authors: Martin Fowler
book_publisher: Addison-Wesley, 2000
---

# Dealing with Generalization

## Pull Up Field

Two subclasses have the same field.

_Move the field to the superclass._

## Pull Up Method

You have methods with identical results on subclasses.

_Move them to the superclass._


## Push Down Method

Behaviour on a superclass is relevant only for some of its subclasses.

_Move it to those subclasses._

## Push Down Field

A field is used only by some subclasses.

_Move the field to those subclasses._

## Replace Inheritance with Delegation

A subclass uses only part of a superclass' interface or does not want to inherit data.

_Create a field for the superclass, adjust methods to delegate to the superclass, and remove the subclassing._


<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-10/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
		<!-- <li class="next-chapter"><a href="../chapter-11/">Next chapter</a></li> -->
	</ul>
</nav>