---
layout: book
title: Software Systems Architecture | Chapter 10
permalink: /rmit/books/software-systems-architecture/chapter-10/
book_title: Software Systems Architecture, 2nd Edition
book_authors: Nick Rozanski, Eoin Woods
book_publisher: Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012
---

# Chapter 10: Identifying and Using Scenarios

<div class="definition">
	<h4>Definition</h4>
<p>An <strong>architectural scenario</strong> is a well-defined description of an interaction between an external entity and the system. It defines the event that triggers the scenario, the interaction initiated by the external entitty, and the response required of the system.</p>
</div>

A wide range of architectural requirements can be captured using architectural scenarios:

* A set of interactions initiated by the user to which the system must respond
* The processing that must occur automatically at a specific time
* Peak load situations, and the expected response to such situations
* An external regulator has demands for the system operations
* How the system responds to a particular failure
* The changes a maintainer may make to the system
* Other situations which the design of the system must cope with

## Types of Scenarios

_Functional scenarios_ are usually defined in terms of a sequence of events to which the system must respond in a particular way. These events may be derived from a use case. Examples:

* Users initiating transactions
* Data arriving at external interfaces
* A temporal event

_System quality scenarios_ are defined in terms of how the system should react to a change in its environment in order to exhibit one or more quality properties. The important properties are those concerning security, performance, availability and evolution. Examples:

* System can be modified to provide a new function
* System can cope with a level of load
* System can protect critical information even when some of the security infrastructure is compromised

## Uses for Scenarios

Within the architecture definition process, scenarios can be used:

* To provide input to architecture defintion
* To define and validate the system scope
* To evaluate the architecture
* To provide an effective source of analysis when communicating with stakeholders
* To discover missing requirements
* To drive the testing process, highlighting important features to stakeholders

## Identifying and Prioritizing Scenarios

To work effectively with scenarios, a set must be captured and organized by priority and usefulness. This can be achieved by working from different sources such as requirements, stakeholders and your own experience.

Functional requirements suggest functional scenarios that may need some fleshing out, and non-functional requirements suggests the behaviours the system is expected to exhibit.

Stakeholders provide a rich source of information about the expected system behaviours. Testers may provide insight into system quality scenarios that are not easy to extract from requirements. Stakeholders may also gain a deeper understanding of the system under design during the elicitation of scenarios.

Your own experience may provide scenarios particularly if it is a domain, or will utilise technology, you are familiar with.

When a set of scenarios has been identified, they need to be prioritized. Having a number greater than 5 or 10 can involve a loss of focus on the important scenarios. Prioritization involves discussions with stakeholders who will identify the importance they attach to the system. Stakeholders probably understand the problem domain better than you. Your own assesment of the risk for implementing the scenario will also count in the classification of scenarios.

You should also consider the risk of not addressing some of the scenarios.

Rank scenarios in terms of both priority and risk so that these are the scenarios to focus your efforts on. Spend less time worrying about the rest.

## Capturing Scenarios

For a functional scenario, there are usually five pieces of information to define:

1. _Overview_: a brief description of what the scenario is supposed to illustrate.
2. _System state_: the state of the system before the scenario occurs (if significant). This is usually an explanation of any information that should already be stored in the system for the scenario to be meaningful.
3. _System environment_: any significant observations about the environment that the system is running in, such as the unavailability of external systems, particular infrastructure behaviour, time-based constraints and so on.
4. _External stimulus_: a defintion of what causes the scenario to occur, such as data arriving at an interface, user input, the passage of time, or any other event of significance to the system.
5. _Required system response_: an explanation, from an external observer's point of view, of how the system should respond to the scenario.

#### Example:

__Photo uploaded to web API__

* _Overview_: How the system handles the upload of a photo from a mobile phone.
* _System state_: The system has enough file space to withhold the photo. The database has enough space to retain the photo metadata.
* _System environment_: The production environment is running nominally.
* _External stimulus_: The photo file arrives via the web API carrying metadata about the photo file and the metadata including the location of photo.
* _Required system response_: The system shall save the metadata in the database. The system shall place the photo in its local file store. The file transfer process will pick up the photo and copy the photo for transfer to Flickr. The file transfer process will pick up the photo and move the photo to static storage.

The stimulus-response approach does not work so well when capturing system quality scenarios. These scenarios try to illustrate characteristics that vary widely; in general, they try to show how the system responds to change in its environment. Viewing the change as a stimulus is artificial.

For a system quality scenario, there are usually five pieces of information to define:

1. _Overview_: a brief description of what the scenario is supposed to illustrate.
2. _System state_: the state of the system before the scenario occurs, if the behaviour specified in the scenario depends on it. For quality scenarios, this may need to define aspects of the system-wide state (such as a level of load across the system) rather than the information stored in the system.
3. _System environment_: any significant observations about the environment that the system is running in, such as the unavailability of external systems, particular infrastructure behaviour, time-based situations, and so on.
4. _Environment changes_: an explanation of what has changed in the system's environment that causes the scenario to occur. This could be infrastructure changes or failures, changes in external system behaviour, security attacks, required modifications, or any of the other environment changes that require the system to possess a particular quality property in order to deal with them.
5. _Required system behaviour_: a definition of how the system must behave in response to the change in its environment (e.g. how the system should respond, from a quantifiable performance point of view, to a defined increase in the number of requests arriving per minute).

#### Example

(This is for maintainence)

Update to Flickr API Keys

* _Overview_: How the system copes with the change of the Flick API Keys.
* _System environment_: The production environment is running nominally.
* _Environment changes_: The need arises to update the API keys required to transfer photos to Flickr.
* _Required system behaviour_: An administrator shall be able to update the API key through a web page that will not affect the overall system behaviour.

(This is for availability)

* _Overview_: How the system copes when the Flickr API Keys have expired.
* _System environment_: The production environment is running nominally.
* _Environment changes_: While copying files to Flickr, the Flickr API returns an error message.
* _Required system behaviour_: The system shall log the error message, but continue to move the photos to static storage. The system shall set the flag in the database for the photo to indicate the photo was not copied to Flickr.

## What Makes a Good Scenario?

A scenario is a useful technique that can be incorporated in situations such as stakeholder communication, architectural evaluation and analysis, and as specifications for live testing. The key qualities for a good scenario are:

* _Credibile_: A realistic situation with enough detail for the reader to accept the scenario as a valid situation the system can encounter.
* _Valuable_: It is of direct use in the architectural process.
* _Specific_: It describes a particular situation accurately, rather than a generic description of the system behaviour for a whole class of situations.
* _Precise_: It is clear what the situation is and the required response of the system.
* _Comprehensible_: It can be understood by the stakeholders who are affected by the scenario. 

## Applying Scenarios

The costs and benefits expected when applying the scenario depending on how they are applied.

### Paper models

Primarily expressed using UML or data flow, these can be expressed as diagrams on a whiteboard or in a CASE tool.

### Walkthroughs

A review of paper-based models with stakeholders. This brings the system to life and allows flaws and missing requirements to be exposed.

### Simulations

Simulations may be modelling in a spreadsheet or specialized tools involving UML.

The problem with simulations tends to be that the creation of the simulation is itself a reasonably complex and costly task. It may not be reusable later as part of the production environment. The degree of realism and how reliable the results of the simulation are affects the dependability of the simulation for providing clues about the scenario in real life.

### Prototype Implementation Testing

Building a prototype can provide you with a high degree of confidence that one or more aspects of your architecture will succeed. However, building prototypes is expensive and time-consuming. Prototyping can focus on high-risk areas of particular importance to stakeholders.

### Full-Scale Live Testing

Scenarios can provide a basis for planning real system-level tests. The most important scenarios identified by stakeholders can be used as specifications for the initial system tests. These test may validate the stakeholders belief in the system.

## Effective Use of Scenarios

### Identify a Focused Scenario Set

It isn't useful to end up with dozens of scenarios. There isn't a prescriptive maximum, but more than 15 to 20 important scenarios indicates a lack of focus and will not be effective most systems. Working with stakeholders to prioritize the scenarios into a set that will provide more efficient use of your time.

### Use Distinct Scenarios

Revisit scenarios when on the surface they seem different but are very similar in terms of the requirements they place on the system. These scenarios may actually be duplicates and can be removed as they don't provide significant insights.

### Use Scenarios Early

Scenarios have the greatest impact early in the process when the architecture is taking shape. They help to focus architecture and design activities on the most important aspects of the system.

### Include the Use of System Quality Scenarios

Besides _input_, _process-, and _output_, scenarios should also be used for investigating, validating and understanding the quality properties of the system.

### Include the Use of Failure Scenarios

Avoid focussing attention on successful situations; ignoring cases when thing go wrong will lead to inappropriate or negligent assumptions about system quality attributes, especially in failure situations.

### Involve Stakeholders Closely

Involving stakeholders can complicate matters, but they should not be excluded from identifying scenarios. They will surprise you with the choices they make for what is important, and how they reveal aspects of the system you have not thought of.

## Checklist

* Have you defined a wide enough range of system quality scenarios (such as security, performance, availabilty and evolution)?
* Have you defined and applied a wide enough range of failure and exception scenarios?
* Have you prioritized your scenarios by stakeholder importance and risk?
* Have you kept the number of scenarios down to a manageably small level, at most 15 to 20?
* Have you reviewed and agreed on the required responses and behaviours with the appropriate stakeholders or subject matter experts?
* Have you included some scenarios that _you_ think will be valuable (based on your previous experience) as well as those nominated by your stakeholders?
* Are all of your scenarios catalogued and named?
* If defining a scenario helps indicate a gap or mistake in the requirements, have you made sure that this is addressed?
* If applying a scenario indicates a mismatch between required and actual response or behaviour, have you revised the architectural design appropriately?





