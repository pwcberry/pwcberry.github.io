---
layout: book
title: Software Systems Architecture | Chapter 7
permalink: /rmit/books/software-systems-architecture/chapter-07/
book_title: Software Systems Architecture, 2nd Edition
book_authors: Nick Rozanski, Eoin Woods
book_publisher: Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012
---

# Chapter 7: The Architecture Definition Process

Architecture definition is an activity that starts early in the project lifecycle and due to the unclear aspect of the scope and requirements, it is liable to change frequently, moreso than activities further along the lifecycle. During this process, the current view of the system may differ substantially from what will be built.

## Guiding Principles

For an architecture definition to be successful, it must adhere to the following principles.

* Driven by _stakeholder concerns_, but also _balances_ these concerns when they conflict or are incompatible
* Encourages effective _communication_ of decisions, principles and the solution to stakeholders
* Ensures continual adherence to the architectural decisions throughout the lifecycle to final deployment
* _Structure_ is critical: unambiguous tasks and objectives that form inputs and outputs to each step
* It must be _pragmatic_: takes into consideration real-world difficulties
* It must be _flexible_: it can be suited to particular circumstances
* It must be _technology agnostic_: the process must not stipulate what technologies the architecture will be based on
* It must _integrate_ with the chosen software development lifecycle
* Aligns with good _software engineering practices_ and _quality management standards_ (such as ISO 9001)

## Process Outcomes

The main goal of architecture definition is to develop a sound architecture and to manage the production and maintenance of all the elements captured in the architecture description. There are desirable secondary outcomes:

* Clarification of requirements and of other inputs to the process
* Management of stakeholder's expectations
* Identification and evaluation of architectural options
* Description of architectural acceptance criteria (indirectly)
* Creation of a set of design inputs (ideally)

## The Process Context

Architecture definition sits between the requirements analysis and software construction. However, there are trade-offs and information refinements that occur between all three processes during the project lifecycle.

* Requirements analysis provides the scope and desired functionality of the system that is input to the architecture definition
* Architecture definition reveals inconsistencies in the requirements that are fed back to requirements analysis. Stakeholders are advised of the costs and complexities for meeting their concerns
* When a suitable architecture exists according to the architecture definition, software construction can be planned
* The increments in software construction provides further feedback to the architecture definition, validating or highlighting problems

## Supporting activities

Before the architecture definition commences, the following outcomes have occured:

* The system's baseline scope and context are defined
* The key stakeholder concerns are defined
* The right stakeholders have been identified and engaged

In reality, these outcomes are rarely present at the same time. It can be challenging to discover and consolidate these inputs and obtain stakholder agreement before the solution can be thought about.

Therefore, the architecture definition has these supporting activities:

* Define the initial scope and context
* Engage the stakeholders
* Capture first-cut concerns
* Define the architecture
* Optionally, create a skeleton system.

The skeleton system can be implemented as part of the first development increment, and provide early validation of the architecture.

## Architecture Definition Activities

The amount of uncertainty and change while bringing together stakeholders provides the biggest challenges as an architect. What to include or exclude changes as stakeholders gain a better understanding of the significance of what they are requesting.

Architecture definition moves in an interative process, where the main steps are as follows:

1. Consolidate the inputs
2. Identify scenarios
3. Identify the relevant architectural styles
4. Produce a candidate architecture
5. Explore the architectural options
6. Evaluate the architecture with the stakeholders
7. A) Rework the architecture; B) Revisit the requirements

## Process Exit Criteria

The key to deciding when enough architecture work has been completed is to consider the risks your project is facing. If you have unresolved risks that are likely to endanger project success, you need to do more architecture work. If you have addressed the material risks to a sufficient level, you are likely to have performed enough architecture work.

A good indication of whether you have addressed your risks is when your stakeholders provide feedback stating that their concerns will be met and that their exposure to risk has been mitigated.

Different projects will require different amounts of architecture work, depending on their scale, complexity, criticality and technical characteristics.

<div class="principle">
	<h4>Principle</h4>
	<p>Architecture definition (or an iteration of it) can be considered complete once the material risks that the system faces have been mitigated, which can be judged by the absence of significant comments or actions after stakeholder evaluation of the architecture.</p>
</div>

<div class="strategy">
	<h4>Strategy</h4>
	<p>Aim to produce an architectural description that is good enough to meet the needs of its users, rather than strive for a perfect version that will take significantly more resources to complete without providing any real benefit to the system's stakeholders.</p>
</div>

<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-05/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>
		<li class="next-chapter"><a href="../chapter-08/">Next chapter</a></li>
	</ul>
</nav>