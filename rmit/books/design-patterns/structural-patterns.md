---
layout: book
title: Structural Patterns
permalink: /rmit/books/design-patterns/structural-patterns/
book_title: Design Patterns - Elements of Reusable Object-Oriented Software
book_authors: Eric Gamma, Richard Helm, Ralph Johnson, John Vlissides
book_publisher: Addison-Wesley, 1995
---

## Structural Patterns

* concerned with how classes and objects are composed to form larger structures
* structural _object_ patterns describe ways to compose objects to realize new functionality, particulary at run-time

### Adapter

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise becasue of incompatible interfaces</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>An existing class does not match the interface that is required</li>
				<li>Provide a reusable class that cooperates with unrelated or unforeseen classes, that is, classes that don't necessarily have compatible interfaces</li>
				<li><em>(object adapter only)</em> you need to use several existing subclasses, but its impractical to adapt their interface by subclassing every one. An object adapter can adapt the interface of its parent class</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Target</code>: defines the domain-specific interface the <em>Client</em> uses</li>
				<li><code>Client</code>: collaborates with objects conforming to the <code>Target</code> interface</li>
				<li><code>Adaptee</code>: defines an existing interface that needs adapting</li>
				<li><code>Adapter</code>: adpats the interface of <code>Adaptee</code> to the <code>Target</code> interface</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<strong>A class adapter</strong><br>
			<ul>
				<li>adapts <code>Adaptee</code> to <code>Target</code> by committing to a concrete <code>Adaptee</code> class. As a consequence, a class adapter won't work when we want to adapt a class <em>and</em> its subclasses</li>
				<li>lets <code>Adapter</code> override some of <code>Adaptee</code>'s behaviour, since <code>Adapter</code> is a subclass of <code>Adaptee</code></li>
				<li>introduces only one object, and no additional pointer indirection is needed to get to the adaptee</li>
			</ul>
			<strong>An object adapter</strong><br>
			<ul>
				<li>lets a single <code>Adapter</code> work with many <code>Adaptee</code>s &mdash; the <code>Adaptee</code> itself and any subclasses. The <code>Adapter</code> can also add functionality to all <code>Adaptee</code>s at once</li>
				<li>makes it harder to override <code>Adaptee</code> behaviour. Subclassing of <code>Adaptee</code> is required and <code>Adapter</code> will have to refer to the subclass</li>
			</ul>
			<strong>Other issues</strong><br>
			<ol>
				<li>The range of work the Adapter performs</li>
				<li>Pluggable adapters &mdash; a class is more reusable when assumptions about its use are kept to a minimum</li>
				<li>Using two-adapters to provide transparency</li>
			</ol>
		</td>
	</tr>
</table>

### Bridge

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Decouple an abstraction from its implementation so that the two can vary independently</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>avoidance of a permanent binding between abstraction and its implementation; useful if implementation is to be selected at run-time</li>
				<li>both abstractions and implementations must be extensible by subclassing; in the Bridge pattern the inheritance chains evolve independently</li>
				<li>changes to the abstraction have no impact on clients</li>
				<li>a proliferation of classes that have produced a hierarchy of "nested generalizations"</li>
				<li>an implementation is to be shared among multiple objects, and this fact should be concealed from the client</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Abstraction</code>: defines abstraction interface; maintains reference to an object of type <code>Implementor</code></li>
				<li><code>RefinedAbstraction</code>: extends interface defined by <code>Abstraction</code></li>
				<li><code>Implementor</code>: defines interface for implementation classes; interface doesn't have to correspond to <code>Abstraction</code>'s interface; typically <code>Implementor</code> provides only primitive operations and <code>Abstraction</code> defines higher-level operations based on these primitives</li>
				<li><code>ConcreteImplementor</code>: defines concrete implementation of <code>Implementor</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td><ol>
			<li>Decoupling interface and implementation</li>
			<li>Improved extensibility</li>
			<li>Hiding implementation details from clients</li>
		</ol></td>
	</tr>
</table>

### Composite

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Compose objects into tree structures to represent part-whole hierarchies. Composite lets clietns treat individual objects and compositions of objects uniformly</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>Represent part-whole hierarchies of objects</li>
				<li>Clients to treat all objects in the hierarchy uniformly, ignoring difference between compositions of objects and individual objects</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Component</code>: declares interface for objects in the composition; implements default behaviour, as appropriate; declares interface for accessing and managing child components; optionally declares accessor for component's parent
				</li>
				<li><code>Leaf</code>: represents leaf objects in composition; defines behavior for primitive objects in composition</li>
				<li><code>Composite</code>: defines behaviours for components having children; stores child components; implements child-related operations in <code>Component</code> interface</li>
				<li><code>Client</code>: manipulates objects in the composition through the <code>Component</code> interface</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>the key is an abstract class that represents <em>both</em> primitives and its containers</li>
				<li>defines class hierarchies consisting of primitive objects and composite objects</li>
				<li>makes the client simple</li>
				<li>easy to add new kinds of components</li>
				<li>can make your design overly general; harder to restrict types of components that can be added</li>
			</ol>
		</td>
	</tr>
</table>

### Decorator

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Attach additional responsiblities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>addition of responsibilities to individual objects dynamically and transparently &mdash; other objects remain unaffected</li>
				<li>withdrawal of responsibilities</li>
				<li>extension by subclassing is impractical, such as a high number of possible extensions, or a hidden class definition</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Component</code>: defines interface for objects that can have responsibilities added to them dynamically</li>
				<li><code>ConcreteComponent</code>: defines an object to which additional responsibilities can be attached</li>
				<li><code>Decorator</code>: maintains a reference to a <code>Component</code> object and defines an interface that conforms to <code>Component</code>'s interface</li>
				<li><code>ConcreteDecorator</code>: adds responsibilities to the component</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>More flexibility than static inheritance</li>
				<li>Avoids feature-laden classes high up in the hierarchy</li>
				<li>A decorator and its component aren't identical</li>
				<li>Lots of little objects; they differ only in how they are connected; may be hard to learn and debug</li>
			</ol>
		</td>
	</tr>
</table>

### Facade

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Provide a unified interface to a set of interfaces in a subsystemmm. Facade defines a higher-level interface that makes the subsystem easier to use</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>provide a simple interface to a complex subsystem</li>
				<li>decouple clients from the implementation classes of abstractions</li>
				<li>introduce layering to organize subsystems; a facade defines entry point into layer</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Facade</code>: delegates requests to appropriate subsystem objects</li>
				<li><code>subsystem classes</code>: implements subsystem functionality; handle work assigned by <code>Facade</code>; do not retain references to <code>Facade</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Shields clients from subsystem, reducing number of objects clients deal with in subsystem</li>
				<li>Promotes weak coupling between subsystem and clients</li>
				<li>Doesn't prevent application from using subsystem classes if they need to</li>
			</ol>
		</td>
	</tr>
</table>

### Flyweight

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Use sharing to support large numbers of fine-grained objects efficiently</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>When <em>all</em> the following are true:<br>
		<ul>
			<li>An application uses a large number of objects</li>
			<li>Storage costs are high due to sheer number of objects</li>
			<li>Most object state can be extrinsic</li>
			<li>Many groups of objects can be replaced by relatively frew shared objects once extrinsic state is removed</li>
			<li>Application doesn't depend on identity</li>
		</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Flyweight</code>: declares an interface through which flyweights can receive and act on extrinsic state</li>
				<li><code>ConcreteFlyweight</code>: implements the <code>Flyweight</code> interface and adds storage for intrinsic state, if any; must be sharable; its intrinsic state must be independent of its object context</li>
				<li><code>UnsharedConcreteFlyweight</code>: a <code>Flyweight</code> object not shared; may have <code>ConcreteFlyweight</code> children at some level in the flyweight object structure</li>
				<li><code>FlyweightFactory</code>: creates and manages flyweight objects; ensures flyweights are shared properly</li>
				<li><code>Client</code>: maintains reference to flyweight(s); computes or stores extrinsic state of flyweight(s)</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ul>
				<li>Run-time costs associated with transferring, finding and/or computing extrinsic state, especially if it was originally intrinsic state</li>
				<li>Run-time costs are offset by storage space savings, due to the smaller number of objects instantiated that comes from sharing, the amount of intrinsic state each object needs,  and whether extrinsic state is computed or stored</li>
				<li>Computed extrinsic state increases storage space savings</li>
				<li>Combined with Composite pattern, the hierarchical structure as a graph of leaf nodes, where each leaf node can be passed a reference to the parent as part of extrinsic state</li>
			</ul>
		</td>
	</tr>
</table>

### Proxy

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Provide a surrogate or placeholder for another object to control access to it</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			Whenever a more sophisticated or versatile reference to object is needed, such as: <br>
			<ol>
				<li>A <strong>remote proxy</strong> provides a local representative for an object in a different address space</li>
				<li>A <strong>virtual proxy</strong> creates expensive objects on demand</li>
				<li>A <strong>protection proxy</strong> controls access to the original object</li>
				<li>A <strong>smart reference</strong> is a replacement for a bare pointer that performs additional actions when an object is accessed. Typical uses include:
					<ul>
						<li>counting references to the real object so it can be freed automatically</li>
						<li>loading a persistent object into memory when it's first referenced</li>
						<li>checking that the real object is locked before it's accessed to ensure that no other object can modify it</li>
					</ul>
				</li>
			</ol>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Proxy</code>: maintains reference to real subject; provides an interface identical to <code>Subject</code>'s; controls access and possibly the lifespan of the real subject</li>
				<li><code>Subject</code>: defines common interface for <code>RealSubject</code> and <code>Proxy</code> so that a <code>Proxy</code> can be used anywhere a <code>RealSubject</code> is expected</li>
				<li><code>RealSubject</code>: defines the real object the proxy represents</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			Introduces a level of indirection that is useful according to the type of proxy:<br>
			<ol>
				<li>Remote proxy can hide the fact that an object resied in a different address space</li>
				<li>Virtual proxy can perform optimizations such as creating an object on demand</li>
				<li>Both protection proxies and smart references allow additional housekeeping tasks when an object is accessed</li>
				<li>Hides <strong>copy-on-write</strong> from client, allowing large, complex objects to be created on demand</li>
			</ol>
		</td>
	</tr>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../creational-patterns/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
		<li class="next-chapter"><a href="../behavioural-patterns/">Next chapter</a></li>
	</ul>
</nav>