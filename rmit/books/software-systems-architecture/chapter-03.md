---
layout: book
title: Software Systems Architecture | Chapter 3
permalink: /rmit/books/software-systems-architecture/chapter-03/
book_title: Software Systems Architecture, 2nd Edition
book_authors: Nick Rozanski, Eoin Woods
book_publisher: Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012
---

# Chapter 3: Viewpoints and Views

There are difficult questions to ask when going about designing the system architecture. Questions such as:

* What are the main functional elements of your architecture?
* How will these elements interact with one another and with the outside world?
* What information will be managed, stored and presented?
* What physical hardware and software elements will be required to support these functional and information elements?
* What operational features and capabilities will be provided?
* What development, test, support, and training environments will be provided?

An all-encompassing model will not provide a satisfactory answer to all these questions. The model will contain formal and informal notations to describe all of the aspects of the system and not clearly identify the architecture's significant features. This type of architecture description will most likely be incomplete, incorrect and quickly out-of-date.

<div class="principle">
	<h4>Principle</h4>
	<p>It is not possible to capture the functional features and quality properties of a complex system in a single comprehensible model that is understandable by, and of value to, its stakeholders.</p>
</div>

<div class="strategy">
<h4>Strategy</h4>
<p>A complex system is much more effectively described by a set of interrelated views, which collectively illustrate its functional features and quality properties and demonstrate that it meets its goals, than by a single overloaded model.</p>
</div>

Architectural Views
-------------------

<div class="definition">
	<h4>Definition</h4>
	<p>A <strong>view</strong> is a representation of one or more structural aspects of an architecture that illustrates how the architecture addresses one or more concerns held by one or more of its stakeholders.</p>
</div>

Deciding what to include in a view:

* Can the stakeholders use the view to determine if their concerns have been met?
* Can the stakeholders use the view to successfully undertake their role in building the system?

#### View Scope

* What structural aspects of the architecture are you trying to represent?
* Do you need to represent the dynamic or static element structures?
* Do you need to represent the sequence of interactions between dynamic and static elements?

#### Element types

* What type(s) of architectural elemetn are you attempting to catergorize?
* Do you need to represent a deployment target, such as servers or cloud service, that the system elements will be deployed to?

#### Audience

* What class(es) of stakeholder is the view aimed at?

#### Audience expertise

* How much technical understanding do these stakeholders have?

#### Scope of concerns

* What stakeholder concerns is the view intended to address?

#### Level of detail

* How much do these stakeholders need to know about this aspect of the architecture?

<div class="strategy">
	<h4>Strategy</h4>
	<p>Only include in a view information that furthers the objectives of your architecture description - that is, information that helps explain the architecture to stakeholders or demonstrates the goals of the system (i.e., the concerns of its stakeholders) are being met.</p>
</div>

Viewpoints
----------

<div class="definition">
	<h4>Definition</h4>
	<p>A <strong>viewpoint</strong> is a collection of patterns, templates and conventions for constructing one type of view. It defines the stakeholders whose concerns are reflected in the viewpoint and the guidelines, principles and template models for constructing its views.</p>
</div>

Architectural viewpoints provide a framework for capturing reusable knowledge to assist in the generation of a particular type of (parital) architectural description. Viewpoints and views can be compared to classes and objects in OOP.

Viewpoints provide structure and consistency to an activity that was in the past quite unstructured.

### The Benefits of Using Viewpoints and Views

* Separation of concerns
* Communication with stakeholder groups
* Management of complexity
* Improved developer focus

### Viewpoint pitfalls

* Inconsistency
* Selection of the wrong set of views
* Fragmentation

### Viewpoint overview

<table class="grid">
	<thead>
		<tr>
			<th>Viewpoint</th>
			<th>Definition</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Context</td>
			<td>Describes the relationships, dependencies and intereactions between the system and its environment.</td>
		</tr>
		<tr>
			<td>Functional</td>
			<td>Describes the system's runtime functional elements, their responsibilities, interfaces and primary interactions.</td>
		</tr>
		<tr>
			<td>Information</td>
			<td>Describes the way that the system stores, manipulates, manages and distributes information.</td>
		</tr>
		<tr>
			<td>Concurrency</td>
			<td>Describes the concurrency structure of the system and maps functional elements to concurrency units to clearly identify the parts of the ssytem that can execute concurrently andhow this is coordinated and controlled.</td>
		</tr>
		<tr>
			<td>Development</td>
			<td>Describes the architecture that supports the software development process.</td>
		</tr>
		<tr>
			<td>Deployment</td>
			<td>Describes the environment into which the system will be deployed and the dependencies that the system has on elements of it.</td>
		</tr>
		<tr>
			<td>Operational</td>
			<td>Describes how the system will be operated, administered, and supported when it is running in its production environment.</td>
		</tr>
	</tbody>
</table>

#### Most important views for typical system types

<table class="grid">
	<thead>
		<tr>
			<th>&nbsp;</th>
			<th>OLTP Information System</th>
			<th>Calculation Service/<br/>Middleware</th>
			<th>DSS/MISS System</th>
			<th>High-Volume Web Site</th>
			<th>Enterprise Package</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Context</td>
			<td>High</td>
			<td>Low</td>
			<td>High</td>
			<td>Medium</td>
			<td>Medium</td>
		</tr>
		<tr>
			<td>Functional</td>
			<td>High</td>
			<td>High</td>
			<td>Low</td>
			<td>High</td>
			<td>High</td>
		</tr>
		<tr>
			<td>Information</td>
			<td>Medium</td>
			<td>Low</td>
			<td>High</td>
			<td>Medium</td>
			<td>Medium</td>
		</tr>
		<tr>
			<td>Concurrency</td>
			<td>Low</td>
			<td>High</td>
			<td>Low</td>
			<td>Medium</td>
			<td>Varies</td>
		</tr>
		<tr>
			<td>Development</td>
			<td>High</td>
			<td>High</td>
			<td>Low</td>
			<td>High</td>
			<td>High</td>
		</tr>
		<tr>
			<td>Deployment</td>
			<td>High</td>
			<td>High</td>
			<td>High</td>
			<td>High</td>
			<td>High</td>
		</tr>
		<tr>
			<td>Operational</td>
			<td>Varies</td>
			<td>Low</td>
			<td>Medium</td>
			<td>Medium</td>
			<td>High</td>
		</tr>
	</tbody>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-02/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>
		<li class="next-chapter"><a href="../chapter-04/">Next chapter</a></li>
	</ul>
</nav>