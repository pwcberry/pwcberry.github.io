---
layout: book
title: extreme programming explained - embrace change
permalink: /rmit/books/extreme-programming-explained/
book_title: extreme programming explianed - embrace change
book_authors: Kent Beck
book_publisher: Addison-Wesley, Indianapolis, 1999
---

# Chapter 1 - Risk: The Basic Problem

Some examples of risk, and how XP addresses each risk: 

__Schedule slips__

* Shorter release cycles to limit slippage
* Customer-requested features worked on for each iteration between releases
* Implement highest priority features first

__Project cancelled__

* Customer chooses the smallest release that makes the most business sense and limits what can go wrong

__System goes sour__

* XP promotes a comprehensive suite of tests that are actively maintained
* XP always keeps the system in prime condition

__Defect rate__

* Unit tests (programmer) and user-acceptance tests (customer) ensures defect rate remains low

__Business misunderstood__

* Customer is an integral member of the team
* Project specification is continually refined

__Business changes__

* XP shortens release cycle, limiting change between releases
* Customer is welcome to substitute new funcitonality for functionality not yet completed during a release

__False feature rich__

* Only the highest priority tasks are worked on

__Staff turnover__

* Programmers accept responsibility for estimating and completing their own work
* Feedback is given about the actual time taken to complete work so estimates can improve
* Rules for who makes and changes estimates are clear
* Human contact within team is encouraged


# Chapter 3 - Economics of Software Development

Software project management can involve four kinds of options:

* __Option to abandon__: Something is gained from the project before it is cancelled. 
* __Option to switch__: Change direction of the project. A strategy that allows for customers to change their tack mid-way through the project is a good strategy.
* __Option to defer__: Wait until the situation has sorted itself out before investing.
* __Option to grow__: When a market looks like it is taking off, grow quickly to take advantage of the opportunities. A strategy that can scale gracefully given increased investment.

Five factors are involved in assessing the option to take:

* Amount of investment required to get the option
* Price at which you can purchase the prize if you exercised the option
* Current value of the prize
* Amount of time which you can exercise the option
* Uncertainty in the eventual value of the prize

# Chapter 4 - Four Variables

A model of software development involves four variables:

* Cost
* Time
* Quality
* Scope

## Interactions between the variables

_Cost_: money can grease the path a little, but too much causes overabundance: "we can hire more devs to speed up delivery of the product". Too little will not guarantee a solution for the customer's business problem.

_Time_: increase the time to deliver can improve quality and increase scope. Since feedback from systems in production is higher quality than any other kind of feedback, giving a project too much time will hurt it: the possibility for timely feedback reduces. Too little time and the project suffers from lower quality, inhibited scope and poor cost-benefit result.

_Quality_: is a terrible control variable. Short-term gains can be made (in time and cost) by deliberately sacrificing quality but the eventual cost in business, technical and human terms can be enormous. For example: business has to pay for maintenance of too many bugs, thus no new features can be delivered. Technical debt can be a nightmare when attempting to evolve the product. Developers, product owners, stakeholders: they burn out, become disenfranchised, lost for answers.

_Scope_: Less scope makes it possible to deliver quality as long as the customer's business problem is still solved. Less scope allows for a product to evolve in increments over shorter time spans.

# Chapter 7 - Four Values

The four values of XP are:

* Communication
* Simplicity
* Feedback
* Courage

# Chapter 8 - Basic Principles

## Fundamental principles

* Rapid feedback
* Assume simplicity
* Incremental change
* Embracing change
* Quality work

## Less important principles

* Teach learning
* Small initial investment
* Play to win
* Concrete experiments
* Open, honest communication
* Work with people's instincts, not against them
* Accepted responsibility
* Local adaption
* Travel light
* Honest measurement

# Chapter 9 - Back to Basics

Activities that programmers cannot do without.

## Coding

* Code gives you a chance to communicate clearly and concisely. Algorithms, business intent, expansion.
* Communication turns into learning.
* The artefact that development cannot live without.

## Testing

* Tests are about testing functional and non-functional requirements.
* Tests help you trust your assumptions about the business requirements.
* Tests are both a resource and a responsibility.
* Tests keep a program alive longer.
* Programming and testing together is faster than just programming.
* Testing done badly leads to false confidence.

## Listening

* Listen to the customer's problem to better explain what is straight-forward or difficult.
* Customer's provide feedback to ensure the product is on track to meet expectations.

## Designing

* Create structure to organize the logic of the system.
* Good design ensures changes to one part of the system logic doesn't affect the other parts.
* Bad design ensures poorly managed dependencies, duplication and redundancy.

# Chapter 10 - A Quick Overview

## The Planning Game

Quickly determine the scope fo the next release by combining business priorities and technical estimates. As reality overtakes the plan, update the plan.

Business people need to decide:

* Scope
* Priority
* Composition of releases
* Dates of releases

Technical people need to decide:

* Estimates (Guesses)
* Consequences
* Process

## Small releases

Put a simple system into production quickly, then release new versions on a very short cycle.

Each release should be as small as possible, containing the most valuable business requirements. The release has to make sense as a whole.

## Metaphor

Guide all development with a simple shared story of how the whole system works.

## Simple design

The system should be designed as simply as possible at any given moment. Extra complexity is removed as soon as it is discovered.

The right design is one that

1. Runs all the tests
2. Has no duplicated logic
3. States every intention important to the programmers
4. Has the fewest possible classes and methods

## Testing

Programmers continually write unit tests, which must run flawlessly for development to continue. Customers write tests demonstrating that features are finished.

Write tests for methods in production that could possibly break. Sometimes 

## Refactoring

Programmers restructure the system without changing its behaviour to remove duplication, improve communication, simplify or add flexibility.

## Pair programming

All production code is written with two programmers at one machine.

## Collective ownership

Anyone can change any code anywhere in the system at any time.

## Continuous integration

Integrate and build the system many times a day, every time a task is completed.

## 40-hour week

Work no more than 40 hours a week as a rule. Never work overtime a second week in a row.

## On-site customer

Include a real, live user on the team, available full-time to answer questions.

## Coding standards

Programmers write all code in accordance with rules emphasizing communication through the code.

# Chapter 12 - Management Strategy

* Metrics
* Coaching
* Tracking
* Intervention

## Coaching

The coach doesn't take responsibility for many development tasks. Rather, the job duties are as follows:

* Be available as a development partner, particularly for new programmers beginning to take responsibility or for difficult technical tasks.
* See long-term refactoring goals, and encourage small-scale refactorings to address parts of these goals.
* Help programmers with individual technical skills, like testing, formatting, and refactoring
* Explain the process to upper-level managers.

Coaches look after their development team: they provide distractions that are not related to code such as games, toys, food: treats.


