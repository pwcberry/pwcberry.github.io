---
layout: book
title: Introduction to The Design and Analysis of Algorithms, Third Edition
permalink: /rmit/books/design-and-analysis-of-algorithms/chapter-01/
book_title: Introduction to The Design and Analysis of Algorithms, Third Edition
book_authors: Anany Levitin
book_publisher: Pearson Education, 2012
---

# Chapter 1 - Introduction

## Fundamentals of Algorithmic Problem Solving

The algorithm design and analysis process:

### Understand The Problem

If possible, sketch examples with expected outcomes. Can the problem be solved by an algorithm?

There are common types of problems in computing. There may already be a satisfactory algorithm for solving the problem in question if it is one of these types.

It helps to understand how the algorithm works and its strengths and weaknesses. 

An __instance__ of the problem is an input to the algorithm. The set of instances that the algorithm can handle must me explicitly specified. The algorithm must work for every instance in this set; an unknown boundary value may crash the algorithm.


### Ascertain the Capabilities of the Computational Device

* Sequential algorithms
* Parallel algorithms (concurrency)

### Choose between Exact and Approximate Problem Solving

* Some problems cannot be solved exactly for most instances
* Available algorithms that can solve the problem exactly may too slow due to complexity

### Algorithm Design Techniques

An __algorithm design technique__ ("strategy" or "paradigm") is a general approach to solving problems algorithmically. It is applicable to a variety of problems in the different areas of computing.

Algorithms are the cornerstone of computer science.

### Designing an Algoirthm and Data Structures

* Be judicious with the choice of data structures to use in conjunction with the algorithm
* The data structures should suit the operations within the algorithm

### Methods of Specifying an Algorithm

* Pseudocode
* Rarely natural language
* Never flowchart

### Prove an Algorithm's Correctness

* Prove the algorithm yields the correct result for every legitimate instance in a finite amount of time
* Use of mathematical induction
* For approximate algorithms the error produced by the algorithm does not exceed a predefined limit

### Analyzing an Algorithm

* Efficiency - time, space
* Simplicity - can be understood with limited or no references
* Generality - set of inputs, generality of the problem to solve

If none of these criteria are satisifed by the algorithm design, it is time to rework. The best algorithm won't appear on first attempt.

Consider fine-tuning available algorithms for the problem at hand.

### Code an Algorithm

Validity of the program that implements the alogrithm can be determined by testing (unit testing).

Efficiency of the implementation is also important.

As a rule, a good algorithm is a result of repeated effort and rework.

__Optimality__: What is the minimum amount of effort the algorithm has to exert to solve the problem?

## Important Problem Types

### Sorting

Rearrange items of a given list in nondecreasing order.

A sorting algorithm is considered _stable_ if it preserves the relative order of any two equal elements in its input. Such that:

Two equal elements, _i_ and _j_, where _i < j_ will have the positions _i'_ and _j'_ respectively, such that _i' < j'_ when the sort has finished.

There are numerous sorting algorithms but not one that will fit all situations.

### Searching

Find a given value, or __search key__, in a given set or multiset (a set where several elements may have the same value).

There are numerous search algorithms but not one that will fit all situations. Some algorithms depend on the input already being ordered.

Searching dynamic sets has to take into consideration the effects of addition and deletion.

### String Processing

String matching is a critical type of algorithm that has useful applications such as DNA alphabets.

### Graph Problems

A __graph__ can be thought of as a collection of points called _vertices_ that are connected by line segments called _edges_.

* Graph traversal (how to reach all points)
* Shortest-path algorithms
* Topological sorting of graphs with directed edges
* Travelling salesman problem (TSP)
* Graph-colouring problem: assign the smallest number of colours to the vertices of a graph so that no two adjacent vertices are the same colour

### Combinatorial Problems

These are problems that ask, implicitly or explicitly, to find a combinatorial object - such as a permutation, a combination, or a subset - that satisfies certain constraints.

These are the most difficult problems to solve due to:

1. The number of combinatorial objects typically grow extremely fast with a problem's size, reaching unimaginable magnitudes even for moderate-sized instances
2. There are no known algorithms fo solving such problems exactly in an acceptable amount of time

### Geometric Problems

Deal with geometric objects such as points, lines and polygons. Applications include computer graphics, robotics and tomography.

* Closest-pair problem
* Convex-hull problem

### Numerical Problems

Involve mathematical objects of continuous nature such as:

* solving equations
* computing definite integrals
* evaluating functions

The majority of these problems can only be solved approximately. Accumulation of rounding errors can drastically distort the output of even a sound algorithm.

Not so important for business applications, but plays a critical role in scientific and engineering applications.

## Fundamental Data Structures

<nav class="nav-chapters">
    <ul>
        <li class="index"><a href="../index.html">Index</a></li>
        <li class="next-chapter"><a href="../chapter-02/">Next chapter</a></li>
    </ul>
</nav>
