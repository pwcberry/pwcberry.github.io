---
layout: book
title: Hypertext and Hypermedia | Chapter 8
permalink: /rmit/books/hypertext-hypermedia/chapter-08
book_title: Hypertext and Hypermedia
book_authors: Jakob Nielsen
book_publisher: Academic Press, San Diego, 1990
---

# Chapter 8. Navigating Large Information Spaces

When users move around a large information space there is a real risk that they may become disoriented or have trouble finding the information they need. For example, one system does not reestablish a completely identical screen layout when returning to a previous state after a backtrack operation. Users will find it difficult to recognize the location they have returned to and thus complicates the understanding of the navigational dimensions of the hyperspace.

A simple solution to the navigation problem is to provide a guided tour through the hypertext - suggestive of the original "trails" suggested by Vannevar Bush in 1945. A guided tour can be considered a "superlink" that connects a string of nodes instead of just two nodes. As long as users stay on the tour, they can just issue a "next node" command to see more relevant information.

Guided tours may provide the option for side trips, and allow the user to exit and return to the tour at any stage, but in essence they a sequential form of navigation rather than open exploration inherent in hypertext.

The most important navigation facility is the backtrack, which takes the user back to the previous node. The great advantage of the backtrack is that it serves as a lifeline for the user who can do anything in hypertext and still be certain to be able to get back to familiar territory by using the backtrack. It should always be available, it should be activated the same way, and it should allow the user to backtrack enough steps to be returned all the way to the very first introduction node.

Some hypertext systems provide more general history mechanisms such as history lists or user-defined bookmarks.

## Overview Diagrams

Hypertext is based heavily on navigation. Since the information space will normally be too large for every node and link to be shown on a single map, an overview diagram my be provided that shows various levels of detail. That detail may be global or local in scope.

Another alternative is the fish eye. This view shows great detail for those parts of the information that are close to the user's current location of interest and gradually diminishing amounts of detail for those parts that are progressively farther away. The use of the fisheye requires two properties of the information space: It should be possible to estimate the distance between a given location and the user's current focus of interest, and it should be possible to display the information at several levels of detail. This is possible for highly-structured hypertexts.

Overview diagrams can also help users understand their current location and their own movements. The diagram may show "footprints" on the map to indicate to the user the current location and previous visits.

Another navigatonal aid to help users is the concept of landmarks: especially prominent nodes that stand out in specific regions of the information space.

## Information Retrieval

A search for information in a hypertext might be performed purely by navigation, but is should also be possible for the user to have the computer find things through varioius search mechanisms.

Navigation is best for information spaces that are small enough to be covered exhaustively and familiar enough to the users to let them find their way around. However, information spaces are unfortunately large and unfamiliar and require the user of _queries_ to find information.

Search results from a query may be integrated with the overview diagram by highlighting those nodes that contain "hits". A combination of query methods to select a subset of the hypertext and traditional navigation to look at the information might be the best of both worlds if done right.

It could also be possible to filter a hypertext based on relevance feedback from other users in a kind of "voting filter". Users with little patience might choose only to see hypertext elements judged relevant by many previous users while more adventurous users might want the raw hypertext with everything on it.



<nav class="nav-chapters">
	<ul>
		<li class="prev-chapter"><a href="../chapter-06/">Previous chapter</a></li>
		<li class="index"><a href="../index.html">Index</a></li>
	</ul>
</nav>