---
layout: rmit
title: Applying UML and Patterns
permalink: /rmit/object-oriented-design/books/applying-uml-patterns/chapter-01/
---

Applying UML and Patterns, 3rd Edition
======================================

_Author_: Craig Larman

_Publisher_: Prentice Hall, Pearson Education, 2005

Chapter 1: What is Object-Oriented Analysis and Design?
=======================================================

Most Important Learning Goal
----------------------------

A critical ability in OO development is to skillfully assign responsibilities to software objects.

Nine fundamental principles in object design and responsibility assignment are presented and applied. They are organized in a learning aid called GRASP of princples with names such as _Information Expert_ and _Creator_.

What is Analysis and Design?
----------------------------

__Analysis__ emphasizes and _investigation_ of the problem and requirements. The purpose is to discover omissions or synthesize research to understand the problem deeply.

__Design__  emphasizes a _conceptual solution_ (in software and hardware) that fulfils the requirements.

What is Object-Oriented Analysis and Design?
--------------------------------------------

__Object-oriented analysis__ emphasizes the discovery and description of objects (or concepts) in the problem domain.

__Object-oriented design__ emphasizes the definition of software objects and how they collaborate to fulfil the requirements.

### Key steps

The following describe the steps within the analysis and design phase of a project, also highlighting any artefacts that are produced. Whilst the steps appear sequential, there may be a number of iterations within each step or within the entire process.

#### 1. Define use cases

Stories and scenarios may be extracted during requirements analysis; they may be written into use cases.

#### 2. Define a domain model

The domain model is a description of the domain using objects to highlight important concepts, attributes and associations.

The domain model does not describe software objects; it is high-level, and may also be called the conceptual object model.

#### 3. Assign Object Responsiblities and Draw Interaction Diagrams

Collaborations may be illustrated with the use of sequence diagrams, by drawing the flow of messages between objects.

These diagrams provide a dynamic view of the objects.

#### 4. Define Design Class Diagrams

A static view of class definitions is provided by a design class diagram. It highlights attributes and operations of the classes, providing a specification or implementation.

These diagrams show software classess.

### Three Perspectives to apply UML

1. __Conceptual perspective__: diagrams are interpreted as describing a situation in the real world or the domain of interest
2. __Specification (software) perspective__: diagrams describe software abstractions or components with specifications or interfaces but is language-agnostic
3. __Implementation (software) perspective__: diagrams describe software implementations using a particular technology

#### Meaning of "Class" in Different Perspectives

* __Conceptual class__: real-world concept or thing
* __Software class__: represents a specification or implementation perspective of a software component, without reference to technology
* __Implementation class__: a class described in an object-oriented language

