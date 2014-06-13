---
layout: book
title: Refactoring - Bad Smells in Code
permalink: /rmit/books/refactoring/chapter-03/
book_title: Refactoring - Improving the Design of Existing Code
book_authors: Martin Fowler
book_publisher: Addison-Wesley, 2000
---

# Bad Smells in Code

Below is the following summaries for each code smell. The refactoring method is listed as a bullet point.

## Duplicated Code

* Extract Method
* Pull Up Method
* Form Template Method
* Substitute Algorithm
* Extract Class

## Long Method

The longer a procedure is, the more difficult it is to understand.

Be aggressive about decomposing methods. If you have to write a comment, it may be an indication that the code could be extracted as a method.

* Extract method
* Replace Temp with Query
* Introduce Parameter Object
* Preserve Whole Object
* Replace Method with Method Object
* Decompose Conditional

## Large Class

Eliminate redundancy

* Extract Class
* Extract Subclass
* Extract Interface
* Duplicate Observed Data (GUI)

## Long Parameter List

If you don't have something you need, you can always ask another object to ask it for you. You only pass enough so that the method can get to everything it needs, including what is available on the host class.

Long parameter lists are hard to understand.

Don't create a dependency between host object and called object.

If the parameter list is too long or changes often, the dependency structure needs to be redesigned.

* Replace Parameter with Method
* Preserve Whole Object
* Introduce Parameter Object

## Divergent Change

Software is structured to make it easier to change

One class is commonly changed in different ways for different reasons

* Extract Class

## Shotgun Surgery

Make lots of little changes to a lot of different classes. Changes are scattered all over the codebase, making them hard to track down, and an important modification can be missed.

* Move Method
* Move Field
* Inline Class

## Feature Envy

Objects are a technique to package data with the processes used on that data.

A method is more interested in a class other than its host class. The focus of envy is the data.

* Move Method
* Extract Method

To combat the divergent change smell use the Strategy and Visitor patterns from GoF.

Put things together that change together.

Strategy and Visitor allow behaviour to be changed easily because they isolate the small amount of behaviour that needs to be overridden, but at the cost of further indirection.

## Data Clumps

Bunches of data hanging around together deserve to be in their own class.

* Extract Class
* Introduce Parameter Object
* Preserve Whole Object

## Primitive Obsession

Record types allow you to structure data into meaningful groups. Record types are awkward to create for only one or two things.

* Replace Data Value with Object
* Replace Type Code with Class
* Replace Type Code with Subclasses
* Replace Type Code with State/Strategy

* Extract Class

* Introduce Parameter Object
* Replace Array with Object

## Switch Statements

When you see a switch statement, consider polymorphism. 

* Extract Method
* Move Method
* Replace Type Code with Subclasses
* Replace Type Code with State/Strategy
* Replace Conditional with Polymorphism
* Replace Parameter with Explicit Methods
* Introduce Null Object

## Parallel Inheritance Hierarchies

A special case of shotgun surgery. A subclass created in one hierarchy has to be created in the other. The prefix of each new class name is an indication of the smell.

To remove duplication it to ensure instances of one hierarchy has references to instances of the other.

* Move Method
* Move Field

## Lazy Class

Each class costs money to maintain and understand. A class that isn't doing enough should be eliminated.

* Collapse Hierarchy
* Inline Class

## Speculative Granularity

"I think we need the ability to this kind of thing someday"

* Collapse Hierarchy
* Inline Class
* Remove Parameter
* Rename Method

## Temporary Field

* Extract Class
* Introduce Null Object

## Message Chains

* Hide Delegate

This can be done to every object in the chain, but each intermediate object becomes a middle man.

* Extract Method
* Move Method

## Middle Man

Encapsulation is the hiding of internal details from the public. Delegation is found with encapsulation.

Often it is apparent that a class is delegating its methods to another class.

* Remove Middle Man
* Inline Method
* Replace Delegation with Inheritance

## Inappropriate Intimacy

* Move Method
* Move Field
* Change Bidirectional Association to Unidirectional
* Extract Class
* Hide Delegate
* Replace Inheritance with Delegation

## Alternative Classes with Different Interfaces

* Rename Method
* Move Method
* Extract Superclass

## Incomplete Library Class

* Introduce Foreign Method
* Introduce Local Extension

## Data Class

Classes that only provide mutators and accessors for data.

* Encapsulate Field
* Encapsulate Collection
* Remove Setting Method
* Move Method
* Extract Method
* Hide Method

## Refused Bequest

Subclasses aren't interested in the method and data provided by their parents. This indicates the hierarchy is wrong.

* Push Down Method
* Push Down Field

A stronger smell is when the subclass uses the behaviour of the parent class, but does not support the interface of the superclass.

* Replace Inheritance with Delegation


<nav class="nav-chapters">
	<ul>
		<!-- <li class="prev-chapter"><a href="../structural-patterns/">Previous chapter</a></li> -->
		<li class="index"><a href="../index.html">Index</a></li>		
		<li class="next-chapter"><a href="../chapter-06/">Next chapter</a></li>
	</ul>
</nav>