---
layout: book
title: Applying UML and Patterns | Chapter 13
permalink: /rmit/books/applying-uml-patterns/chapter-13/
book_title: Applying UML and Patterns, 3rd Edition
book_authors: Craig Larman
book_publisher: Prentice Hall, Pearson Education, 2005
---

# Chapter 13: Logical Architecture and UML Package Diagrams

## What is the Logical Architecture? And Layers?

<div class="definition">
	<h4>Definition</h4>
	<p>The __logical architecture__ is the large-scale organization of the software classes into packages (or namespaces), subsystems, and layers. There is no indication of _how_ these elements are deployed.</p>
</div>

<div class="definition">
	<h4>Definition</h4>
	<p>A __layer__ is a very coarse-grained group of classes, packages or subsystems that has cohesive responsibility for a major aspect of the system. Layers are organized such that "higher" layers utilise the services of the "lower" layers, but the reverse direction is uncommon if not disallowed.</p>
</div>

In a __strict layered architecture__, a layer only calls into the layer directly below it. This is the design of network stacks. However, in informations systems, it is more common to have a __relaxed layer architecture__, where the higher layer can call down into any of the lower layers.

 A logical architecture does not have to be organized into layers, although it is a common practice to do so.

## What is Software Architecture?

<div class="definition">
	<h4>Definition</h4>
	<p>An architecture is the set of significant decisions about the organization of a software system, the selection of the structural elements and their interfaces by which the system is composed, together with their behaviour as specifried in the collaborations among those elements, the composition of these structural and behavioural elements into progressively larger subsystems, and the architectural style that guides this organization - these elements and their interfaces, their collaborations, and their composition.</p>
</div>

## Applying UML: Package Diagrams

A UML package diagram provides a way to group elements. The diagram can also illustrate the layers in a logical architecture, as a layer can be modelled as a package.

Dependencies can be demonstrated between packages by using the UML dependency notation: a dashed line with an arrow indicating the direction of the dependency. This allows the large-scale coupling within the system to be illustrated.

To aid in the understanding of package diagrams, or to generate documentation, code can be reverse-engineered into package diagrams.

## Guideline: Design with Layers

The __Layers pattern__ :

* Provides large-scale organization of the logical structure into discrete layers that have distinct, related responsibilities with a clean, cohesive separation of concerns
* Allows collaboration and coupling from higher to lower levels
* Avoids the effects of source code changes in other layers
* Prevents application logic from becoming tangled with the user interface, thus reducing the possibility for code reuse or distribution
* Allows technical services to be exchanged or distributed to another node without affecting the business logic
* Provides clear boundaries of different areas of concern, enabling developers to work on a specific area, and reduces coupling

### Common layers in an information system logical architecture

<table class="grid">
	<cols>
		<col style="width: 15%">
		<col style="width: 25%">
		<col/>
	</cols>
	<thead>
		<th>Layer</th>
		<th>Other names</th>
		<th>Responsibility</th>
	</thead>
	<tbody>
		<tr>
			<td>UI</td>
			<td>Presentation, View</td>
			<td>
				<ul>
					<li>GUI windows</li>
					<li>reports</li>
					<li>speech interface</li>
					<li>HTML, XML, SVG, JSP, JavaScript,...</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Application</td>
			<td>Workflow, Process, Mediation, App Controller</td>
			<td>
				<ul>
					<li>handles presentation layer requests</li>
					<li>workflow</li>
					<li>session state</li>
					<li>window/page transitions</li>
					<li>consolidation/transformation of disparate data for presentation</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Domain</td>
			<td>Business, Application Logic, Model</td>
			<td>
				<ul>
					<li>handles application layer requests</li>
					<li>implementation of domain rules</li>
					<li>domain services - services may be used by just one application, but there is also the possiblity of multi-application services</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Business Infrastructure</td>
			<td>Low-level Business Services</td>
			<td>
				<ul>
					<li>very general low-level business services used in many business domains</li>
					<li>e.g., `CurrencyConverter`</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Technical Services</td>
			<td>Technical Infrastructure, High-level Technical Services</td>
			<td>
				<ul>
					<li>(relatively) high-level technical services and frameworks</li>
					<li>`Persistence`, `Security`</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Foundation</td>
			<td>Core Services, Base Services, Low-level Technical Services/Infrastructure</td>
			<td>
				<ul>
					<li>low-level technical services, utilities, and frameworks</li>
					<li>data structures, threads, math, file, DB, and network I/O</li>
				</ul>
			</td>
		</tr>
	</tbody>
</table>

<figure>
<img src="Logical_Architecture_Layers" width="600" height="600" />
<figcaption>Layers and their dependencies and applicability</figcaption>
</figure>

### How to design the application logic with objects

Create software objects with names and information similar to the real-world domain, and assign application logic responsibilities to them. For example, the `EntryForm` and `VideoFile` classes have specific application logic responsiblities. These software objects are called __domain objects__. It represents something in the problem domain space and has related application or business logic, such as the `EntryForm` performing validation on its inputs.

Designing objects this way also gives the application layer the name of __domain layer__.

The __layers__ of an architecture represent vertical slices, while __partitions__ represent a horizontal division of relatively parallel subsystems of a layer.

<figure>
<img src="Logical_Architecture_Layers" width="600" height="450" />
<figcaption>Layers and partitions</figcaption>
</figure>

## The Model-View Separation Principle

<div class="principle">
	<h4>Principle</h4>
	<p>__The Model-View Separation Principle__ comprises:</p>
	<ol>
		<li>UI objects and non-UI object should not be directly connected or coupled. UI objects are specific to the application, where as non-UI (domain) objects are reusable.</li>
		<li>UI objects must not contain application logic. UI objects should only initialize UI elements, handle UI events and delegate requests for application logic to the non-UI objects.</li>
		<li>Domain objects (the model) should not have direct knowledge of UI objects (the view).</li>
	</ol>
</div>

In the Observer pattern, model objects only know of an interface that supplies messages. The UI object may implement this interface (such as `PropertyListener`). However, the model is still unaware that the listener object is related to the UI.

The motivation for Model-View separation includes:

* To support cohesive model definitions that focus on the domain processes, rather than on user interfaces.
* To allow separate development of the model and user interface layers.
* To minimize the impact of requirement changes in the interface upon the domain layer.
* To allow new views to be easily connected to an existing domain layer, without affecting the domain layer.
* To allow multiple simulataneous views on the same model object
* To allow execution of the model layer independent of the user interface layer
* To allow easy porting of the model layer to another user interface framework

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-09/">Previous chapter</a></li>
		<li class="next-chapter"><a href="../chapter-14/">Next chapter</a></li>
	</ul>
</nav>