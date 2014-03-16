---
layout: book
title: Software Systems Architecture | Chapter 5
permalink: /rmit/books/software-systems-architecture/chapter-05/
book_title: Software Systems Architecture, 2nd Edition
book_authors: Nick Rozanski, Eoin Woods
book_publisher: Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012
---

# Chapter 5: The Role of the Software Architect

The Architecture Definition Process
-----------------------------------

<div class="definition">
	<h4>Definition</h4>
	<p><strong>Architecture definition</strong> is a process by which stakeholder needs and concerns are captured, an architecture to meet these needs is designed, and the architecture is clearly and unambiguously described via an architectural description.</p>
</div>

The goal of an architecture definition process is to design an architecture that meets stakeholder needs. The activities that make up this process are:

* _Capturing stakeholder needs_: undestanding what is important to stakeholders
* _Architectural design descisions_: these lead to a candidate architecture
* _Assesing the candidate architecture_: how well it meets the stakeholder needs
* _Refinement_: making the architecture adequate
* _Capturing the architectural design decisions_ made and the resulting _architectural structures_ of the system in some form of architecture description appropriate to the environment in which you are working

These activities are pursued iteratively. 

<div class="principle">
	<h4>Principle</h4>
	<p>A good archtiecture definition process is one that leads to a good architecture, documented by an effective architectural description, whcih can be realized in a way that is time-efficient and cost-effective for the organization.</p>
</div>

### Architecture Definition Isn't Just Design

Architecture definition bridges the gap between problem and solution spaces. Design is an activity that focuses on the solution space, and its target audience is the developers. Requirements analysis focuses on the problem space, and works within the constraints set by the scope of the project.

The architecture definition must take into account stakeholder requirements that shape the architecture, and to identify an acceptable set of tradeoffs between these requirements where necessary. Importantly, the efforts in the process are driven by the system scope.

The architect has to:

* Consider input from a broader range of people than the user stakeholders
* Take note of a wider range of concerns than functionality
* Weigh up the big picture and the details

### The Boundary between Requirements Analysis and Architecture Definition

Strickly speaking, the architecture does not gather requirements, and can analyse, understand and prioritize the requirements in the given specification. However, a requirements specification is more than likely not to exist, or representative of the struggle the business analysts had in understanding the requirement tradeoffs.

<div class="strategy">
	<h4>Strategy</h4>
	<p>Work with the requirements analysts to understand the system's requirements and their relative importance. For each important requirement, consdier the likely difficult of implementing it and feed this back to the requriements analysts to help them understand what can cand cannot be achieved.</p>
</div>

### The Boundary between Architecture Definition and Design

As an architect, you must decide if something is _architecturally significant_ and must be considered by you, or it can be left to the detailed design phase.

<div class="definition">
	<h4>Definition</h4>
	<p>A concern, problem or system element is <strong>architectural significant</strong> if it has a wide impact on the structure of the system or on its important quality properties such as performance, scalability, security, reliability or evolvability.</p>
</div>

You can also consider an issue is architecturally significant if it has a strong impact on important stakeholders or requires tradeoffs between stakeholder needs.

Your job as architect is to focus your and your stakeholders' attention on the important questions and decisions, which are those that are likely to have a significant effect on the system's ability to meet its goals. However, be aware that not all architectural decisions are made in abstract terms; consideration must be for all levels, from strategy to the code. It is also important to continually review your architecture, to ensure the scope is appropriate and that your judgement is correct.

<div class="strategy">
	<h4>Strategy</h4>
	<p>As you are designing the architecture, review the areas you have determined as being architecturally significant or not, and revise these as necessary in the light of your deeper understanding of your stakeholders' concerns and of the architecture itself.</p>
</div>

The Role of the Architect
-------------------------

<div class="principle">
	<h4>Principle</h4>
	<p>The architect is responsible for designing, documenting, and leading the construction of the system that meets the needs of all its stakeholders.</p>
</div>

There are four aspects to this role:

1. Identify and engage the stakeholders
2. Understand and capture the stakeholders' concerns
3. Create and take ownership of the definition of an architecture that addresses these concerns
4. Take a leading role in the realization of the architecture into a physical product or system

### Architectural leadership

Most organizations view "architect" as a technology leadership role. This includes the activities that focus on the people who will see through the successful implementation of the system. Such activities are:

* Explaining and promoting the architecture to the business and technology stakeholders, and justifying the principles and decisions that underpin it
* Providing input to and support for planning and estimation tasks
* Participating in change control processes
* Taking responsibility for and signing off on the completion of technical milestones
* Helping to resolve issues that arise during development
* Taking on more specific development roles such as design authority
* Reviewing documentation and possibly code

Architectural Specializations
-----------------------------

### Product architect

* Responsibile for delivery of one or more releases of a software product
* Key member of product development team
* Oversees product technical integrity
* Needs to identify user stakeholders, particularly before first release

### Domain architect

* General architectural function
* Focusses on a particular domain of interest such as network architecture
* Valuable for working on large and complex projects

### Infrastructure architect

* Owns provision of hardware and software infastructure
* Hardware may include servers, data centres, LANs, storage and backup
* Software may include enterprise security, DBMS, desktop tools

### Solution architect

* Takes a broad, high-level view of the entire solution
* Role also includes business process change, procurement, staffing and other non-technical aspects

### Enterprise architect

* Has responsibility for the cross-system information systems architecture of the whole enterprise
* Concerned with the definition and oversight of company-wide principles, standards and policies

The Architect's Skills
----------------------

* Across-the-board understanding of technology at a high level
* An understanding of the real-world issues and problems the system is attempting to solve
* Have real experience designing and building systems
* Deep technical expertise in at least one area
* A good understanding of the business domain
* Capable at information capture
* Adept at facilitation
* Accomplished at negotiation
* Effective at communication
* Flexibile

The Architect's Responsibilities
--------------------------------

* Ensure that the scope, context and constraints are documented and accepted.
* Identify, engage, and enfranchise your stakeholders.
* Facilitate the making of system-level decisions, ensuring that they are made on the basis of the best information and are aligned with stakeholder needs.
* Arbitrate and ensure that consensus is reached when stakeholder needs are in conflict or are incompatible.
* Arbitrate and ensure that consensus is reached when architectural compromises need to be made (for example, performance against flexibility or security against ease of use).
* Capture and interpret input from technical and domain specialists (and represents this accurately to stakeholders as needed).
* Define and document the architecture of the system.
* Define and document strategies, standards and guidelines to direct the build and deployment of the system.
* Ensure that the architecture meets the system quality attributes.
* Develop and own the architecture description.
* Help ensure that agreed-upon architectural principles and standards are applied to the finished system or product.
* Provide technical leadership.

<div class="strategy">
	<h4>Strategy</h4>
	<p>Ensure that you have clear terms of reference for your role on any project in which you are significantly involved. If this does not already exist, draw up a brief terms of reference document, and review and agree on it with your stakeholders.</p>
</div>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-04/">Previous chapter</a></li>
		<li class="next-chapter"><a href="../chapter-07/">Next chapter</a></li>
	</ul>
</nav>