---
layout: book
title: Behavioural Patterns
permalink: /rmit/books/design-patterns/behavioural-patterns/
book_title: Design Patterns - Elements of Reusable Object-Oriented Software
book_authors: Eric Gamma, Richard Helm, Ralph Johnson, John Vlissides
book_publisher: Addison-Wesley, 1995
---

## Behavioural Patterns

* algorithms and assignment of responsibilities between objects
* describes patterns of communication between objects
* characterize complex control flow
* use of inheritance to distribute behaviour between classes
* use of object composition rather than inheritance

### Chain of Responsibility

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td>
			<ul>
				<li>multiple objects may handle the request, and the handler must be ascertained automatically</li>
				<li>issue a request to one of several objects without specifying the receiver explicitly</li>
				<li>objects set to handle a request must be specified dynamically</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Handler</code>: defines an interface for handling requests; optionally implements a successor relationship</li>
				<li><code>ConcreteHandler</code>: handles requests it is responsible for; can access its successor; if it can handle the request it does so, otherwise it forwards the request to its successor</li>
				<li><code>Client</code>: initiates the request to <code>ConcreteHandler</code> object on the chain</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Reduced coupling</li>
				<li>Added flexibility in assigning responsibilities to objects</li>
				<li>Receipt isn't guaranteed</li>
			</ol>
		</td>
	</tr>
</table>

### Command

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Encapsulate a reqeust as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Interpreter

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Iterator

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Mediator

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Memento

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Observer

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### State

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Allow an object to alter its behaviour when its internal state changes. The object will appear to change its class</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Strategy

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Template Method

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

### Visitor

<table class="software-pattern">
	<tr>
		<th>Intent</th>
		<td>Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates</td>
	</tr>
	<tr>
		<th>Applicability</th>
		<td></td>
	</tr>
	<tr>
		<th>Participants</th>
		<td></td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td></td>
	</tr>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../structural-patterns/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
<!-- 		<li class="next-chapter"><a href="../chapter-15/">Next chapter</a></li> -->
	</ul>
</nav>