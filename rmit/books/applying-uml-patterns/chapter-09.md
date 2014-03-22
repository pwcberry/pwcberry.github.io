---
layout: book
title: Applying UML and Patterns | Chapter 9
permalink: /rmit/books/applying-uml-patterns/chapter-09/
book_title: Applying UML and Patterns, 3rd Edition
book_authors: Craig Larman
book_publisher: Prentice Hall, Pearson Education, 2005
---

# Chapter 9: Domain Models

#### Objectives:

* Identify conceptual classes related to the current iteration
* Create an initial domain model
* Model appropriate attributes and associations

## Introduction

The domain model demonstrates noteworthy concepts. Use cases and expert insight provide ideas for its creation. The domain model can influence operation contracts, a glossary and the Design Model, especially software objects in the __domain layer__ of the Design Model.

A domain model is drawn in UML using class diagram notation which yields a conceptual perspective model: the diagram illustrates conceptual classes and their associations and becomes a _visual dictionary_.

Identifying a rich set of conceptual classes is at the heart of object-oriented analysis. Done with skill and a _short_ time investment (a few hours early in the iteration), it pays off during design because of better understanding of the solution domain.

<div class="guideline">
	<h4>Guideline</h4>
	<p>Avoid a waterfall-mindset big-modelling effort to make a thorough or "correct" domain model - it won't ever be either, and such over-modelling efforts lead to <em>analysis paralysis</em>, with little or no return on investment.</p>
</div>

## What is a Domain Model?

The quintessential _object_-oriented analysis step is the decomposition of a domain into noteworthy concepts or objects.

<div class="definition">
	<h4>Definition</h4>
<p>A <strong>domain model</strong> is a <em>visual</em> representation of conceptutal classes or real-situation objects in a domain. The domain model does not represent software classes, the domain layer of a software architecture, or software objects with responsibilities.</p>
</div>

When applied with UML notation, the domain model is drawn as a set of class diagrams with no operations defined. It may show:

* domain objects or conceptual classes
* assocations between conceptual classes
* attributes of conceptual classes

### Conceptual Classes

Informally a __conceptual class__ is an idea, thing or object of interest in the domain. More formally, a conceptual class may be considered in terms of its symbol, intension and extension:

* __Symbol__: words or images representing a conceptual class
* __Intension__: the definition of a conceptual class
* __Extension__: the set of examples to which the conceptual class applies

#### Example

A conceptual class for the event of a photo upload is named _Photo_. The intension of a _Photo_ may state that it "represents a photo uploaded from a mobile phone, and includes a location". The extension of _Photo_ is all the examples of photos that will be uploaded.

Conceptual classes may have no attributes, or have a purely behavioural role in the domain model. A class should not be excluded because the requirements do not indicate any obvious need to remember information about it.

## Motivation: WHy Create a Domain Model?

The similarity of naming between the domain model and the domain layer supports a __low representational gap__ between the software representation and the mental model of the domain.

## How to Find Conceptual Classes

### Strategies to Find Conceptual Classes

1. Reuse or modify existing models
2. Use a category list
3. Identify noun phrases

### Resuse or modify existing models

Sources of information about these are:

* _Analysis Patterns_ by Martin Fowler
* _Data Model Patterns_ by David Hay
* _Data Model Resource Book_ (vols 1 & 2) by Len Silverston 

### Using a Category List

The following table contains many common categories drawn mainly from business information system needs. Examples are drawn from 1) POS, 2) Monolpoly and 3) airline reservation domains.


<table class="grid">
	<thead>
		<tr>
			<th>Conceptual Class Category</th>
			<th>Examples</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><strong>business transactions</strong><br><br><em>Guideline</em>: These are critical (they involve money), so start with transactions.</td>
			<td><code>Sale, Payment</code><br><br><code>Reservation</code></td>
		</tr>
		<tr>
			<td><strong>transaction line items</strong><br><br><em>Guideline</em>: Transactions often come with related line items, so consider these next.</td>
			<td><code>SalesLineItem</code></td>
		</tr>
		<tr>
			<td><strong>product or service related to a transaction or transaction line item</strong><br/><br/><em>Guideline</em>: Transactions are <em>for</em> something (a product or a service). Consider these next.</td>
			<td><code>Item</code><br/>
			<br/>
			<code>Flight</code>,<code>Seat</code>, <code>Meal</code></td>
		</tr>
		<tr>
			<td><strong>where is the transaction recorded?</strong><br/><br/><em>Guideline</em>: Important.</td>
			<td><code>Register</code>, <code>Ledger</code>
			<br/>
			<br/>
			<code>FlightManifest</code></td>
		</tr>
		<tr>
			<td><strong>roles of people or organizations related to the transaction; actors in the use case</strong><br/><br/><em>Guideline</em>: We usually need to know about the parties involved in a transaction.</td>
			<td><code>Cashier</code>,
			<code>Customer</code>,
			<code>Store</code>
			<br/>
			<code>MonopolyPlayer</code>
			<br/>
			<code>Passenger</code>
			<code>Airline</code></td>
		</tr>
		<tr>
			<td><strong>place of transaction; place of service</strong></td>
			<td><code>Store</code>
			<br/>
			<br/>
			<code>Airport</code>,
			<code>Plane</code>,
			<code>Seat</code></td>
		</tr>
		<tr>
			<td><strong>noteworthy events, often with a time or place we need to remember</strong></td>
			<td><code>Sale</code>,
			<code>Payment</code>
			<br/>
			<code>MonopolyGame</code>
			<br/>
			<code>Flight</code></td>
		</tr>
		<tr>
			<td><strong>physical objects</strong><br/><br/><em>Guideline</em>: This is especially relevant when creating device-control software, or simulations.</td>
			<td><code>Item</code>,
			<code>Register</code>
			<br/>
			<code>Board</code>,
			<code>Piece</code>,
			<code>Die</code>
			<br/>
			<code>Airplane</code></td>
		</tr>
		<tr>
			<td><strong>description of things</strong></td>
			<td><code>ProductDescription</code>
			<br/>
			<br/>
			<code>FlightDescription</code></td>
		</tr>
		<tr>
			<td><strong>catalogs</strong>
			<br/>
			<br/>
			<em>Guideline</em>: Descriptions are often in a catalog.</td>
			<td><code>ProductCatalog</code>
			<br/>
			<br/>
			<code>FlightCatalog</code></td>
		</tr>
		<tr>
			<td><strong>containers of things (physical or information)</strong></td>
			<td><code>Store</code>,
			<code>Bin</code>
			<br/>
			<code>Board</code>
			<br/>
			<code>Airplane</code></td>
		</tr>
		<tr>
			<td><strong>things in a container</strong></td>
			<td><code>Item</code><br/>
			<code>Square</code> (in a <code>Board</code>)<br/>
			<code>Passenger</code></td>
		</tr>
		<tr>
			<td><strong>other collaborating systems</strong></td>
			<td><code>CreditAuthorizationSystem</code>
			<br/>
			<br/>
			<code>AirTrafficControl</code></td>
		</tr>
		<tr>
			<td><strong>records of finance, work, contracts, legal matters</strong></td>
			<td><code>Receipt</code>,
			<code>Ledger</code>
			<br/>
			<br/>
			<code>MaintenanceLog</code></td>
		</tr>
		<tr>
			<td><strong>financial instruments</strong></td>
			<td><code>Cash</code>,
			<code>Cheque</code>,
			<code>LineOfCredit</code>
			<br/>
			<br/>
			<code>TicketCredit</code></td>
		</tr>
		<tr>
			<td><strong>schedules, manuals, documents that are regularly referred to in order to perform work</strong></td>
			<td><code>DailyPriceChangeList</code>
			<br/>
			<br/>
			<code>RepairSchedule</code></td>
		</tr>
	</tbody>
</table>


### Finding Conceptual Classes with Noun Phrase Identification

A __linguistic analysis__ in a textual description such as a use case scenario may identify noun and noun phrases to be considered candidates for conceptual classes or attributes.

<div class="guideline">
	<h4>Guideline</h4>
	<p>Care must be applied with this method; a mechanical noun-to-class mapping isn't possible, and words in natural language are ambiguous.</p>
</div>

### Report Objects

<div class="guideline">
	<h4>Guideline</h4>
	<ul>
		<li>In general, showing a report of other information in a domain model is not useful since all of its information is derived or duplicated from other sources. This is a reason to exclude it from the model.</li>
		<li>On the other hand, if it has a special role in terms of the business rules e.g. a Recepit gives the bearer the right to return an item, then it is a reason to show it in the model.
		</li>
	</ul>
</div>

### Use Domain Terms

<div class="guideline">
	<h4>Guideline</h4>
	<p>Make a domain model in the spirit of how a cartographer or mapmaker works:</p>
	<ul>
		<li>Use the existing names in the territory. E.g. in a library, a customer is a "Borrower".</li>
		<li>Exclude irrelevant or out-of-scope features.</li>
		<li>Do not add things that are not there.</li>
	</ul>
</div>

### A Common Mistake with Attributes vs. Classes

When creating a domain model, use this rule of thumb to determine if something should be an attribute or modelled separately as a class:

<div class="guideline">
	<h4>Guideline</h4>
	<p>If we do not think of some conceptual class X as a number or text in the real world, X is probably a conceptual class, not an attribute.</p>
</div>

### When to Model with "Description" Classes

A __description class__ contains information that describes something else.

<div class="guideline">
	<h4>Guideline</h4>
	<p>Add a description class when:</p>
	<ul>
		<li>There needs to be a description about an item or a service, independent of the current existence of any examples of those items or services.</li>
		<li>Deleting instances of things they describe results in a loss of information that needs to be maintained, but was incorrectly associated with the deleted thing.</li>
		<li>It reduces redundant or duplicated information.</li>
	</ul>
</div>

## Associations

An __association__ is a relationship between classes that indicates some meaningful and interesting connection. This relationship is in general one that needs to be preserved - or, _between what objects does a relationship need to be remembered?_

This is from a conceptual perspective where in the real world such a relationship matters. It does not highlight a software need, although during implementation some of these needs arise.

<div class="guideline">
	<h4>Guideline</h4>
<p>Consider including the following associations in a domain model:</p>
<ul>
	<li>Associations for which knowledge of the relationship needs to be preserved for some duration ("need-to-remember associations").</li>
	<li>Associations derived from the Common Associations List.</li>
</ul>
</div>

In UML notation, an association is a line between classes with a capitalized name. The ends of the association is known as a role, and may comprise multiplicity, name or navigability.

The association is inherently bidrectional. It is a purely conceptual and does not indicate connections between software entities.

An optional "reading direction arrow" indicates the way to read the association; it does not signify direction of visibility or navigation.

<div class="guidline">
	<h4>Guideline</h4>
	<p>Name an association based on a _ClassName-VerbPhrase-ClassName_ format where the verb phrase creates a sequence that is readable and meaningful.</p>
</div>

Example names:

* Good: _Sale Paid-by CashPayment_; Poor: _Sale Uses CashPayment_
* Good: _Player Is-on Square_; Poor: _Player Has Square_

### Common Associations List

Examples drawn from 1) POS, 2) Monopoly, 3) airline reservation domains.

<table class="grid">
	<thead>
		<tr>
			<th>Category</th>
			<th>Examples</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><strong>A is a transaction related to another transaction B</strong></td>
			<td><code>CashPayment-Sale</code>
			<br>
			<br>
			<code>Cancellation-Reservation</code></td>
		</tr>
		<tr>
			<td><strong>A is a line item of a transaction B</strong></td>
			<td><code>SalesLineItem-Sale</code></td>
		</tr>
		<tr>
			<td><strong>A is a  product or service for a transaction (or line item) B</strong></td>
			<td><code>Item-SalesLineItem (or Sale)</code>
			<br>
			<br>
			<code>Flight-Reservation</code></td>
		</tr>
		<tr>
			<td><strong>A is a role related to a transaction B</strong></td>
			<td><code>Customer-Payment</code>
			<br>
			<br>
			<code>Passenger-Ticket</code></td>
		</tr>
		<tr>
			<td><strong>A is a physical or logical part of B</strong></td>
			<td><code>Drawer-Register</code>
			<br>
			<code>Square-Board</code>
			<br>
			<code>Seat-Airplane</code></td>
		</tr>
		<tr>
			<td><strong>A is physically or logically contained in/on B</strong></td>
			<td><code>Register-Store</code>,<code>Item-Shelf</code>
			<br>
			<code>Square-Board</code>
			<br>
			<code>Passenger-Airplane</code></td>
		</tr>
		<tr>
			<td><strong>A is a description for B</strong></td>
			<td><code>ProductDescription-Item</code>
			<br>
			<br>
			<code>FlightDescription-Flight</code></td>
		</tr>
		<tr>
			<td><strong>A is known/logged/recorded/reported/captured in B</strong></td>
			<td><code>Sale-Register</code>
			<br>
			<code>Piece-Square</code>
			<br>
			<code>Reservation-FlightManifest</code></td>
		</tr>
		<tr>
			<td><strong>A is a member of B</strong></td>
			<td><code>Cashier-Store</code>
			<br>
			<code>Player-MonopolyGame</code>
			<br>
			<code>Pilot-Airline</code></td>
		</tr>
		<tr>
			<td><strong>A is an organizational subunit of B</strong></td>
			<td><code>Department-Store</code>
			<br>
			<br>
			<code>Maintenance-Airline</code></td>
		</tr>
		<tr>
			<td><strong>A uses or manages or owns B</strong></td>
			<td><code>Cashier-Register</code>
			<br>
			<code>Player-Piece</code>
			<br>
			<code>Pilot-Airplane</code></td>
		</tr>
		<tr>
			<td><strong>A is next to B</strong></td>
			<td><code>SalesLineItem-SalesLineItem</code>
			<br>
			<code>Square-Square</code>
			<br>
			<code>City-City</code></td>
		</tr>
	</tbody>
</table>

## Attributes

An __attribute__ is a logical data value of an object. They are noteworthy when the requirements imply information needs to be remembered.

The full syntax for an attribute in UML is:

	visibility name : type multiplicity = default {property-string}

A derived attribute can be depicted using the UML notation of a <code>/</code> symbol.

<div class="guideline">
	<h4>Guideline</h4>
	<p>The attributes in a domain model should preferably be <strong>data types</strong>. Very common data types include: <code>Boolean</code>, <code>DateTime</code>,
	<code>Number</code>, <code>Character</code>, or <code>String</code>.</p>
	<p>Other common types include: <code>Address</code>, <code>Color</code>, <code>Phone Number</code>, <code>Tax File Number</code>, <code>SKU</code>, <code>enumerations</code>.</p>
</div>

Avoid attributes that represent __foreign keys__.

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-01/">Previous chapter</a></li>
		<li class="next-chapter"><a href="../chapter-13/">Next chapter</a></li>
	</ul>
</nav>