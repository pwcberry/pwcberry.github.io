---
layout: rmit
title: Semester 1, 2014 | RMIT
permalink: /rmit/books/software-systems-architecture/
---

Software Systems Architecture, 2nd Edition
==========================================

__Authors:__ Nick Rozanski, Eoin Woods

__Publisher:__ Pearson Education, an imprint of Addison-Wesley, Upper Saddle River, New Jersey, 2012

- - - - -

Software Architecture Concepts
------------------------------

A __computer system__: the software elements to be specified or designed in order to meet a set of requirements and the hardware that the software elements will run on.

The __architecture__ of a system is the set of fundamental concepts or properties of the system in its environment, embodied in its elements, relationships, and the principles of its design and evolution.

### System Elements and Relationships

The elements that constitute a system and the relationships between them define the structure of the system. There are two types of structures:

The __static structures__ define the system's internal design-time elements and their arrangement. These elements may be programs, object-oriented classes or packages, database stored procedures, services or any other self-contained code unit. Internal data elmements include classes, RDBs, data files. Internal hardware elements include CPUs, network elements, or hard disks. The static arrangement defines the relationships between these elements.

The __dynamic structures__ define the system's runtime elements and their interactions. Such interactions can be information flows between elements, execution of internal tasks, or the effects they have on data. 

For example, in a classic three-tier client/server architecture, where a user accesses the application through a browser (presentation tier), the browser communicates with the application server (business logic and database access layer) which communicates through the network to the database (data layer). 

The _static structure_ consists of the client software (in the browser), application server, database server and the network connections between them. The _dynamic structure_ consists of requests submitted by the client to the application server over the network (or internet), the application server communicates with the database server through the SAN and the application sends responses back to the client.

Analysis of appropriate structures allows the architect to identify what is the preferred approach, given operational constraints, how familiar developers are with the software elements and budgetary limitations.

### Fundamental System Properties

__Externally visibile behaviour__: what a system does from the standpoint of an external observer; the functional interactions between the system and its environment. Related to the _dynamic structure_, this interactions include inputs and outputs of the system, how the system responds to external stimuli and the API it has made available to the outside world. External behaviour maybe modelled by treating the system as a black box, allowing it to be tested.

__Quality properties__: how a system behaves from the standpoint of an external observer; the externally visible, nonfunctional properties of a system such as performance, security or scalability. What properties are relevant are determined by the project circumstances and the priorities of the stakeholders.

### Principles of Design and Evolution

A well-structured and maintainable system has a consistent implementation and respects a system-wide set of structuring conventions. This allows the system to be more easily understood and encourages extensions to be made in a consistent and logical way, fitting into the overall form of the system without introducing unnecessary complexity.

An architectural principle is a _fundamental statement of belief, approach, or intent that guides the definition of your architecture_. Principles provide a decision-making framework for a consistent, well-structured architecture that exposes the underlying assumptions of the system. Principles can highlight conflicts or contradictions. Principles ensure the system evolves in a direction that is not haphazard.

When principles are in place, solutions for a problem become evident. A solution for a system is a __candidate architecture__: a particular arrangement of static and dynamic structures that has the potential to exhibit the system's required externally visible behaviour and quality properties.

### The Importance of Software Architecture

Systems, large or small, have an architecture. The architecture for a system may or may not be understood and documented. A system is made up of pieces that interact with each other and the outside world in a deterministic way. 

### Architectural Elements

An __architectural element__ is a fundamental piece from which a system can be considered to be constructed. An element should posses the following key attributes:

* A clearly defined set of responsiblities
* A clearly defined boundary
* A set of clearly defined interfaces, which define the services that the element provides to the other architectural elements

### Architectural Descriptions

An __architectural description__ is a set of products that documents the architecture in a way its stakeholders can understand and demonstrates that the architecture has met their concerns. A "product" in this context can include _scope definition_, _architectural models_, _contraints_, and _principles_. The description has to present the essence and detail of an architecture.

Although every system has an architecture, not every system has an architecture that is effectively communicated via an architecture description.

A good architectural description is one that effectively and consistenly communicates the key aspects of the architecture to teh appropriate stakeholders.



