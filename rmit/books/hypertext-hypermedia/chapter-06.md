---
layout: book
title: Hypertext and Hypermedia | Chapter 6
permalink: /rmit/books/hypertext-hypermedia/chapter-06
book_title: Hypertext and Hypermedia
book_authors: Jakob Nielsen
book_publisher: Academic Press, San Diego, 1990
---

# Chapter 6. The Architecture of Hypertext Systems

In theory, there are three distinct levels of a hypertext system:

* Presentation level: user interface
* Hypertext Abstract Machine (HAM) level: nodes and links
* Database level: storage, shared data, and network access

## The Database Level

At the bottom level of the model, the database layer deals with information storage that does not have the external form of hypertext.

As far as the database is concerned, hypertext nodes and links are data objects with no particular meaning.

## The Hypertext Abstract Machine (HAM) Level

The middle tier is where the hypertext system determines the basic nature of its nodes and links and where it maintains the relation among them. The HAM would know of the form of the nodes and links and what attributes were related to each.

The HAM is where standardization of import-export formats for hypertexts is best suited: the database level is constrained by its machines and the user interface level varies in implementation for each hypertext system.

Interchanging hypertexts is more difficult than simply interchanging the component data in the nodes even though there are also problems with the less standardized data formats for non-ASCII information like graphics and video clips. Transferring hypertext from one proprietary system to another is possible but important aspects of the linking information could be lost.

## The User Interface Level

This level deals with presentation of the information in the HAM and defines the interaction paradigm for the user.

Where the HAM defines how links should be typed, the user interface level may decide not to display that information at all to some novice users and to make this type information available only during authoring mode.

## Nodes

Nodes are a fundamental unit of hypertext, but what constitutes a "node" is unclear. Hypertext systems are mainly distinguished by whether they are frame-based or window-based systems.

Frames occupy a fixed amount of space on the computer screen no matter the amount information they contain. The user may have to split a given amount of information over several frames if that information cannot fit into one frame. The advantage of frames is that all user navigation takes place using whatever hypertext mechanisms are provided by the system.

Window-based systems require the user to use a scrolling mechanism in addition to the hypertext mechanisms to show the desired part of the node in the window. The node can be of any size within a window and the need for an unnatural distribution of information over several nodes is eliminated.

A disadvantage for window-based systems is that the hypertext designer has no control over how the node will appear when the user reads it since it can be scrolled in many ways.

Nodes in general display information as written by the original author; there some systems that can generate computed nodes using real-time data.

## Links

Links are almost always anchored at their departure point to porvide the user with some explicit object to activate in order to follow the link. Thus a link has two ends even if it is not bidirectional.

In general, a hypertext design should tell the user _why_ the destination for a link was an interesting place to jump to by relating it to the point of departure and following a set of conventions for the "rhetoric of arrival".

In sparse hypertexts, anchors should be made visually distinct from the surrounding content. However, highlighting may conflict with the use of emphasis in the running text, particularly when _italics_ or **boldface** is used. A style guide can provide consistency for hypertext authors.

Links can also be typed to distinguish among different forms of relationships between nodes.

Link anchors present special problems for layered hypertext architectures. In principal, links belong at the hypertext abstract machine level, but the location of the anchor in the node is dependent on the storage structure for the node media. 


<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-03/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>
		<li class="next-chapter"><a href="../chapter-08/">Next chapter</a></li>
	</ul>
</nav>