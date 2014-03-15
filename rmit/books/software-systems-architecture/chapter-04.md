---
layout: book
title: Software Systems Architecture | Chapter 4
permalink: /rmit/books/software-systems-architecture/chapter-04/
book_title: Software Systems Architecture, 2nd Edition
book_authors: Nick Rozanski, Eoin Woods
book_publisher: Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012
---

# Chapter 4: Architectural Perspectives

Often architectural views will exhibit needs for quality attributes that are common to other views. A viewpoint to guide the creation of a view for each quality property does not work because these qualities can not be examined, or modelled, in isolation.

The conceptual model needs a feature that is orthogonal to viewpoints: an _architectural perspective_. These are _cross-cutting concerns_.

<div class="definition">
	<h4>Definition</h4>
	<p>An <strong>architectural perspective</strong> is a collection of architectural activities, tactics and guidelines that are used to ensure that a system exhibits a particular set of related quality properties that require consideration across a number of the system's architectural views.</p>
</div>

A perspective is _applied to_ each architectural view to assist in analysis and validation. 

Important perspectives are:

* Security
* Performance and Scalability
* Availability and Resilience
* Evolution

Applying Perspectives to Views
------------------------------

When you apply the Security perspective to the Information view, it guides the design of your architecture so that, for example, it includes appropriate data access control and data ownership.

When you apply the Performance perspective to the Concurrency view, it guides the design of your architecture so that, for example, a suitable process structure is used, and shared resources will not lead to contention.

When you apply the Evolution perspective to the Functional view, it guides the design of your architecture so that, for example, you consider the types of changes that will be required and build in the right level of flexibility.

### The Benefits of Using Perspectives

* Defines _concerns_ that guide the architectural description to manifest the quality properties that define the perspective
* Provides common conventions, measurements, or a notation, to _describe_ the system's qualities
* Describes how the architecture can be _validated_ againsts the requirements
* May offer _solutions_ to commmon problems, and promote information sharing
* Encourages you to work in a systematic way to ensure the concerns are met by the system

### Perspective Pitfalls

* Conflicts may arise by the solutions suggested by each perspective
* The degree of usefulness for the perspective depends on the concerns and priorities of stakeholders
* Every situation is different, and the knowledge contained in the perspective should be applied judiciously

<div class="strategy">
	<h4>Strategy</h4>
	<p>Apply only the most relevant perspectives to your views. Base your selection on the needs of stakeholders, the relative importance of the different quality properties to them, and your own experience and judgement.</p>
</div>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-03/">Previous chapter</a></li>
		<li class="next-chapter"><a href="../chapter-05/">Next chapter</a></li>
	</ul>
</nav>