---
layout: book
title: Creational Patterns
permalink: /rmit/books/design-patterns/creational-patterns/
book_title: Design Patterns - Elements of Reusable Object-Oriented Software
book_authors: Eric Gamma, Richard Helm, Ralph Johnson, John Vlissides
book_publisher: Addison-Wesley, 1995
---

## Creational Patterns

* abstraction instantiation process
* make system independent of how its objects are created, composed and represented
* class creational patterns use inheritance to vary the class that's instantiated
* object creational patterns use delegate instantiation to another object
* encapsulate knowledge in the system about which concrete classes are used, and how they are instantiated
* the system at large knows only about the abstract types (abstract classes and interfaces)

### Abstract Factory

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Provide an interface for creating families of related or dependent objects without specifying their concrete classes</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>a system should be independent of how its products are created, composed and represented</li>
				<li>a system should be configured with one of multiple families of products</li>
				<li>a family of related product objects is designed to be used together, and you need to enforce this constraint</li>
				<li>you want to provide a class library of products, and you want to reveal just their interfaces, not their implementations</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>AbstractFactory</code>: declares an interface for operations that create abstract product objects</li>
				<li><code>ConcreteFactory</code>: implements <code>AbstractFactory</code></li>
				<li><code>AbstractProduct</code>: declares an interface for a type of product object</li>
				<li><code>ConcreteProduct</code>: implemented <code>AbstractProduct</code>; defines product to be created by corresponding concrete factory</li>
				<li><code>Client</code>: uses only interfaces defined by <code>AbstractFactory</code> and <code>AbstractProduct</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Isolates concrete classes</li>
				<li>Makes exchanging product families easy</li>
				<li>Promotes consistency among products</li>
				<li>Supporting new kinds of products is difficult</li>
			</ol>
		</td>
	</tr>
</table>

### Builder

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Separate the construction of a complex object from its representation so that the same construction process can create different representations</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>algorithm for creating a complex object should be independent of the parts that make up the object and how they're assembled</li>
				<li>construction process must allow different representations for the object that's constructed</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Builder</code>: specifies abstract interface for creating parts of <code>Product</code></li>
				<li><code>ConcreteBuilder</code>: instantiates and assembles <code>Product</code>, implementing <code>Builder</code>; defines and keeps track of representation it creates; provides interface for retrieving <code>Product</code></li>
				<li><code>Director</code>: constructs an object using <code>Builder</code> interface</li>
				<li><code>Product</code>: the complex object under construction; includes classes that define constituent parts, as well as interfaces for assembling the final product</li>
			</ul>	
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Allows a product's internal representation to vary</li>
				<li>Isolates code for construction and representation</li>
				<li>Allows finer control over construction process</li>
			</ol>
		</td>
	</tr>
</table>

### Factory Method

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>A class is unable to anticipate the class of objects to create</li>
				<li>A class wants its subclasses to specify the objects it creates</li>
				<li>Classes delegate responsibility to one of several helper subclasses, and you want to localize the knowledge of which helper subclass is the delegate</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Product</code>: defines interface of objects the factory method creates</li>
				<li><code>ConcreteProduct</code>: implements <code>Product</code> interface</li>
				<li><code>Creator</code>: declares factory method which returns object of type <code>Product</code>. Creator may also define default implementation. May call the factory method to create a <code>Product</code> object</li>
				<li><code>ConcreteCreator</code>: overrides factory method to return instance of <code>ConcreteProduct</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Provides hooks for subclasses</li>
				<li>Connects parallel class hierarchies</li>
				<li>Clients may have to subclass the <code>Creator</code> class to create a <code>ConcreteProduct</code>; this may cause another point of evolution to appear</li>
			</ol>
		</td>
	</tr>
</table>

### Prototype

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Specify the kinds of objects to create using a prototypical instance, and create new objects copying this prototype</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			A system should be independent of how its products are created, composed and represented, <em>and</em>:
			<ul>
				<li>when the classes to instantiate are specified at run-time, for example, by dynamic loading; <em>or</em></li>
				<li>to avoid building a class hierarchy of factories that parallels the clas hierarchy of products; <em>or</em></li>
				<li>when instances of a class can have one of only a few different combinations of state; the convenience of cloning a prototype with appropriate state may be more valuable than instantiating the same number of classes manually</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Prototype</code>: declares an interface for cloning itself</li>
				<li><code>ConcretePrototype</code>: implements an operation for cloning itself</li>
				<li><code>Client</code>: creates a new object by asking a prototype to clone itself</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Hides concrete classes from client, reducing number of known types</li>
				<li>Allows flexibility in adding and removing products at run-time</li>
				<li>New objects are specified by varying values such as object attributes</li>
				<li>New objects are specified by varying structure such as composition from sub-parts</li>
				<li>Number subclasses is reduced</li>
				<li>Configure an application by loading classes dynamically</li>
				<li><code>Clone</code> method must be present for each subclass</li>
			</ol>
		</td>
	</tr>
</table>

### Singleton

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Ensure a class only has one instance, and provide a global point of access to it</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>There must be exactly one instance of the a class, and is accessible to clients from a well-known access point</li>
				<li>When the sole instance should be extensible by subclassing, and clients should be able to use an extended instance without modifying their code</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Singleton</code>: defines an <em>Instance</em> operation that lets clients access its unique instance, usually as a static or class operation; the class is responsible for creating its own instance</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Controlled access to sole instance</li>
				<li>Reduced name space</li>
				<li>Permits refinement of operations and representation</li>
				<li>Permits a variable number of instances</li>
				<li>More flexible than class operations</li>
			</ol>
		</td>
	</tr>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="index"><a href="../index.html">Index</a></li>		
		<li class="next-chapter"><a href="../structural-patterns/">Next chapter</a></li>
	</ul>
</nav>