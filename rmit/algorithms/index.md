---
layout: rmit
title: Algorithms and Analysis | Semester 2, 2015 | RMIT
permalink: /rmit/algorithms/
---

# Algorithms and Analysis (COSC2123)

[Exam revision](./exam/)

[CS 161 - Design and Analysis of Algorithms](http://openclassroom.stanford.edu/MainFolder/CoursePage.php?course=IntroToAlgorithms)

## Week 2

__Average Case__ is _not_ the average of the worst and best case. It is the average performance across all possible inputs.

`_n_ log _n_`: how is this order-of-growth function determined?

[Generating functions from Recurrence Relations](https://youtu.be/Pp4PWCPzeQs)

[Wikipedia: Recurrence Relation](https://en.wikipedia.org/wiki/Recurrence_relation)

## Week 3


## Week 6

Research:

[AVL Tree](https://en.wikipedia.org/wiki/AVL_tree)

[AVL Trees, AVL Sort](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-006-introduction-to-algorithms-fall-2011/lecture-videos/lecture-6-avl-trees-avl-sort/)

[Red-Black Tree](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree)

[B-Trees](https://en.wikipedia.org/wiki/B-tree)

[B+ Trees](https://en.wikipedia.org/wiki/B%2B_tree)

[B-Trees](http://www.cs.cornell.edu/courses/cs3110/2011sp/recitations/rec24-B-trees/B-trees.htm)

## Week 9

[Princeton KMP (Knuth Morris Pratt) Algorithm](https://youtu.be/iZ93Unvxwtw)

[Wikipedia: Knuth Morris Pratt Algorithm](https://en.wikipedia.org/wiki/Knuth%E2%80%93Morris%E2%80%93Pratt_algorithm)

[Wikipeida: Deterministic Finite Automaton](https://en.wikipedia.org/wiki/Deterministic_finite_automaton)

[Stanford: Deterministic Finite Automata](https://class.coursera.org/automata/lecture/3)

[Cornell: Deterministic Finite Automata](http://www.cs.cornell.edu/~dsteurer/toc13/lectures/4/)

[Permutations](http://rosettacode.org/wiki/Permutations)

## Week 10

[Floyd-Warshall algorithm for all-pairs shortest path](https://youtu.be/PaT1l-mzZtc)


## Week 11

Minimum spanning tree: A graph that is acyclic; the edges in the tree do not form a cycle.

Prim's algorithm will always build a connected tree.

Kruskal's algorithm may not build a connected tree until the algorithm is complete.

[Greedy Algorithms, Minimum Spanning Trees](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-046j-introduction-to-algorithms-sma-5503-fall-2005/video-lectures/lecture-16-greedy-algorithms-minimum-spanning-trees/)

## Week 12 - Review

Don't need to supply proofs or definitions of the order of growth functions

### Recurrence relation

* Use forward substitution to see a pattern
* Use backward substitution to find the pattern in terms of `n`
* Mergesort is one of the basic recurrent algorithms

Why do we need empirical analysis?


* In the exam, all algorithm definitions are based on lecture notes
* Be aware of scenarios when:
    - Best case
    - Worst case
    - Average case
* And be aware of what the orders of growth are for each scenario. 

### Brute force

* Remember formula to computer number of comparisons to match a pattern within text
* Understand why algorithms were developed to improve efficiency of brute force verison

### Depth-first Search

* Topological search
* Traverse a maze

### Decrease and conquer

* Each iteration decreases the size of input / class

### Divide and conquer

* Understand philosophy
* How to compare algorithms
* Recusion tree and master theorem (also "decrease and conquer by a constant factor")

### Transform and conquer

* What happens to heap in Priority Queue ADT when "pop" operation is invoked?
* Problem reduction

### Space and Time 1

### Graph Matching

* Male / female may propose (Shapley algorithm)

### Space and Time 2

* Understand prefix algorithms
* KMP (Knuth) (automaton may be given in exam)

### Dynamic Programming

### Greedy Approaches

A* search won't be asked to do it; will need to understand the idea


## Books

[Introduction to The Design and Analysis of Algorithms, Third Edition](/rmit/books/design-and-analysis-of-algorithms/)


<script>
(function () {
	'use strict';
	var links = document.getElementsByTagName('a');
	[].forEach.call(links, function (link) {
		if (!(/travelsincode.com/.test(link.href))) {
			link.target = '_blank';
		}
	});
}());
</script>