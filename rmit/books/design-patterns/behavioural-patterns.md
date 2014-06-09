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
		<td>
			<ul>
				<li>objects are parameterised by the action to perform</li>
				<li>to specify, queue or execute requests at different times</li>
				<li>to support undo</li>
				<li>to log changes in order to reapply them after a crash</li>
				<li>structure a system around high-level operations built on primitive operations</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Command</code>: the interface for executing an operation</li>
				<li><code>ConcreteCommand</code>: defines binding between <code>Receiver</code> object and action; implements <em>Execute</em> by invoking corresponding operation(s) on <code>Receiver</code></li>
				<li><code>Client</code>: creates <code>ConcreteCommand</code> and sets its receiver</li>
				<li><code>Invoker</code>: asks the command to carry out the request</li>
				<li><code>Receiver</code>: knows how to perform the operations associated with request</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Command decouples object that invokes operation from the object that knows how to perform it</li>
				<li>Commands are first-class objects</li>
				<li>Commands can be assembled into a composite command</li>
				<li>Easy to add new commands</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>when the grammar is simple</li>
				<li>when efficiency is not a critical concern</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>AbstractExpression</code>: declares an abstract <em>Interpret</em> operation common to all nodes in the abstract syntax tree</li>
				<li><code>TerminalExpression</code>: implements <em>Interpret</em> operation associated with terminal symbols in the grammar; instance required for each terminal symbol in a sentence</li>
				<li><code>NonterminalExpression</code>: one such class is required for every rule in the grammar; maintains instance variables of type <code>AbstractExpression</code> for each of the rules; implements <em>Interpret</em> operation for each nonterminal symbol in the grammar</li>
				<li><code>Context</code>: contains information that's global to the interpreter</li>
				<li><code>Client</code>: builds (or is given) an AST representing a particular sentence; AST is assembled from <code>TerminalExpression</code> and <code>NonterminalExpression</code> nodes; invokes <em>Interpret</em> operation</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Easy to change and extend the grammar</li>
				<li>Implementing grammar is easy</li>
				<li>Complex grammars are hard to maintain</li>
				<li>Add new ways to interpret expressions</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>to access an aggregate (collection) object's contents without exposing its internal representation</li>
				<li>to support multiple traversals of collections</li>
				<li>to provide a uniform interface for traversing different aggregate structures</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Iterator</code>: defines an interface for accessing and traversing elements</li>
				<li><code>ConcreteIterator</code>: implements <code>Iterator</code>; keeps track of current position in traversal of collection</li>
				<li><code>Aggregate</code>: defines an interface for creating an <code>Iterator</code> object (also a collection)</li>
				<li><code>ConcreteAggregate</code>: implments interface for creating <code>Iterator</code> and returns appropriate <code>ConcreteIterator</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Supports variations in the traversal of an aggregate</li>
				<li>Iterators simplify <code>Aggregate</code> interface</li>
				<li>More than one traversal can be pending on an aggregate</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>a set of objects communicate in well-defined yet complex ways; the interdependencies are unstructured and difficult to understand</li>
				<li>reusing an object is difficult because it refers to and communicates with many other objects</li>
				<li>when behaviour that's distributed between several classes should be customizable without a lot of subclassing</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Mediator</code>: defines an interface for communicating with <code>Colleague</code> objects</li>
				<li><code>ConcreteMediator</code>: implements cooperative behaviour by coordinating <code>Colleague</code> objects</li>
				<li><code>Colleague classes</code>: each <code>Colleague</code> class knows its <code>Mediator</code> object; each colleague communicates with its mediator whenever it would have otherwise communicated with another colleague</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>It limits subclassing</li>
				<li>It decouples colleagues</li>
				<li>It simplifies object protocols</li>
				<li>It abstracts how objects cooperate</li>
				<li>It centralizes control</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>when a snapshot of an object's state must be saved so that it can be restored to that state later; <em>and</em></li>
				<li>when a direct interface to obtaining that state would expose implementation details and break the object's encapsulation</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Memento</code>: stores internal state of the <code>Originator</code> object. protects against access by objects other than the <code>Originator</code></li>
				<li><code>Originator</code>: creates a memento containing a snapshot of its current internal state; uses the memento to restore that state; sees wide interface of <code>Memento</code></li>
				<li><code>Caretaker</code>: responsible for memento's safekeeping; never operates on or examines the contents of a memento; sees narrow interface of <code>Memento</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Preserves encapsulation boundaries</li>
				<li>It simplifies <code>Originator</code></li>
				<li>Using mementos may be expensive</li>
				<li>Defining narrow and wide interfaces</li>
				<li>Hidden costs in caring for mementos</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>when an abstraction has two aspects, on dependent on the other. Encapsulating these aspects in separate objects lets you vary and reuse them independently</li>
				<li>when a change to one object requires changing an unknowable number of others</li>
				<li>when an object should be able to notify other objects without making assumptions about who those objects are, keeping the arrangement loosely coupled</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Subject</code>: knows its observers. Any number of <code>Observer</code> objects may observe a subject</li>
				<li><code>Observer</code>: defines an updating interface for objects that should be notified of changes in a subject</li>
				<li><code>ConcreteSubject</code>: stores state of interest to <code>ConcreteObserver</code> objects; sends notification to its observers when state changes</li>
				<li><code>ConcreteObserver</code>: maintains a reference to <code>ConcreteSubject</code>; stores state that should stay consistent with the subject's; implements <code>Observer</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Abstract coupling between <code>Subject</code> and <code>Observer</code></li>
				<li>Support for broadcast communication</li>
				<li>Unexpected updates</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>When an object's behaviour depends on its state, and must change its behaviour at run-time depending on that state; <em>or</em></li>
				<li>Operations have large, multipart conditional statements that depend on the object's state - each branch of the conditional is separated into its own class</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Context</code>: defines interface of interest to clients; maintains instance of <code>ConcreteState</code> subclass that defines current state</li>
				<li><code>State</code>: defines interface for encapsulating behaviour associated with particular state of <code>Context</code></li>
				<li><code>ConcreteState subclasses</code>: each subclass implements a behaviour associated with a state of the <code>Context</code></li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Localises state-specific behaviour and partitions behaviour for different states</li>
				<li>Makes state transitions explicit</li>
				<li>State objects can be shared</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>when many related classes differ only in their behaviour; a strategy provides a way to configure a class with one of many behaviours</li>
				<li>when different variants of an algorithm are required</li>
				<li>when an algorithm uses data that clients shouldn't know about; complex algorithm-specific data structures should remain hidden from the client</li>
				<li>when a class defines many behaviours, and these appear as multiple conditional statements in its operations; each conditional branch can be moved into its own Strategy class</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Strategy</code>: declares interface common to all supported algorithms. <code>Context</code> uses this interface to call algorithm defined by <code>ConcreteStrategy</code></li>
				<li><code>ConcreteStrategy</code>: implements algorithm using <code>Strategy</code> interface</li>
				<li><code>Context</code>: configured with a <code>ConcreteStrategy</code> object; maintains a reference to a <code>Strategy</code> object; may define interface to allow <code>Strategy</code> to access its data</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Families of related algorithms</li>
				<li>An alternative to subclassing</li>
				<li>Strategies eliminate conditional statements</li>
				<li>A choice of implementations - the same behaviour, and the client can choose the appropriate strategy based on space and time trade-offs</li>
				<li>Clients must be aware of different Strategies; client must understand how Strategies differ before it can select the appropriate one</li>
				<li>Communication overhead between <code>Strategy</code> and <code>Context</code> - if interface isn't used fully by the context, tighter coupling may be needed between Strategy and Context</li>
				<li>Increased number of objects - shared strategies should not maintain state across invocations</li>
			</ol>
		</td>
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
		<td>
			<ul>
				<li>Use to implement invariant parts of an algorithm once and leave it up to subclasses to implement the behaviour that can vary</li>
				<li>Use when common behaviour among subclassses should be factored and localized into a common class to avoid code duplication</li>
				<li>Use to control subclass extensions - "hook" operations are called at specific points where extension is allowed</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>AbstractClass</code>: defines abstract <strong>primitive operations</strong> that concrete subclasses define to implement steps of an algorithm; implements a template method defining the skeleton of an algorithm</li>
				<li><code>ConcreteClass</code>: implements the primitive operations to execute subclass-specific steps of the algorithm</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ul>
				<li>"The Hollywood Principle": "Don't call us, we'll call you". The parent class calls the operations of a subclass (an inverted control structure)</li>
				<li>A subclass can extend a parent class operation's behaviour by overriding the operation and calling the parent operation explicity</li>
				<li>Sometimes the invocation of the parent operation is forgotten</li>
			</ul>
		</td>
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
		<td>
			<ul>
				<li>when an object structure contains many types of objects with differing interfaces, and operations are to be performed on their concrete classes</li>
				<li>when many distinct and unrelated operations need to be performed on objects in an object structure, and these object interfaces should not be polluted with definitions for these operations</li>
				<li>when the classes defining the object structure rarely change, but often need new operations over the structure</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Participants</th>
		<td>
			<ul>
				<li><code>Visitor</code>: declares a <em>Visit</em> operation for each class of <code>ConcreteElement</code> in the object structure. The operation's name and signature identifies the class that sends the <em>Visit</em> request to the visitor.</li>
				<li><code>ConcreteVisitor</code>: implements each operation declared by <code>Visitor</code>. Each operation implements a fragment of the algorithm defined for the corresponding class of object in the structure. <code>ConcreteVisitor</code> provides the context for the algorithm and stores its local state</li>
				<li><code>Element</code>: defines an <em>Accept</em> operation that takes a visitor as an argument</li>
				<li><code>ConcreteElement</code>: implements the <em>Accept</em> operation</li>
				<li><code>ObjectStructure</code>: can enumerate its elements; may provide a high-level interface to allow visitor to visit elements; may either be a composite or a collection</li>
			</ul>
		</td>
	</tr>
	<tr>
		<th>Consequences</th>
		<td>
			<ol>
				<li>Visitor makes adding new operations easy</li>
				<li>A visitor gathers related operations and separates unrelated ones</li>
				<li>Adding new <code>ConcreteElement</code> classes is hard; each subclass of <code>ConcreteElement</code> gives rise to a new abstract operation on <code>Visitor</code> and a corresponding implementation in every <code>ConcreteVisitor</code> class</li>
				<li>Visiting across class hierarchies. Unlike an <code>Iterator</code>, which is restricted by the type of objects it can traverse, <code>Visitor</code> can traverse objects that don't have a common parent class</li>
				<li>Accumulating state - visitors gather state as they visit each element</li>
				<li>Breaking encapsulation - public operations on the <code>ConcreteElement</code> may expose an element's internal state to statisfy the requirements of the <code>Visitor</code></li>
			</ol>
		</td>
	</tr>
</table>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../structural-patterns/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>		
<!-- 		<li class="next-chapter"><a href="../chapter-15/">Next chapter</a></li> -->
	</ul>
</nav>