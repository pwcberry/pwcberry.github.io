---
layout: book
title: Usability Engineering | Chapter 2
permalink: /rmit/books/usability-engineering/chapter-02/
book_title: Usability Engineering
book_authors: Jakob Nielsen
book_publisher: Academic Press, San Diego, 1993
---

# Chapter 2 - What is Usability

Usability is not "user friendliness": users don't need machines to be friendly to them, they just need machines that will not stand in their way when they try to get their work done.

User needs cannot be described along a single dimension; what one user perceives as friendly may feel very tedious to another.

## Usability and Other Considerations

Usability is a narrow concern compared to the larger issue of system acceptability - the question of whether the system is good enough to satisfy all the needs and requirements of the users and other potential stakeholders. The overall acceptability of the system is a combination of its social acceptability and its practical acceptability.


_A model of the attributes of system acceptability:_

<img src="/img/System_Acceptability_Attributes.svg" width="480"/>

Usability applies to all aspects of a system with which a human might interact, including installation and maintenance procedures.

## Definition of Usability

Traditionally usability is associated with these attributes:

* _Learnability_: Easy to learn so the user can rapidly and effectively work with the system.
* _Efficiency_: Once the user has learned the system, a high level of productivity is achievable.
* _Memorability_: The casual user who returns to the system after some period of not using it does not have to learn everything from scratch.
* _Errors_: A low error rate so that users make few errors interacting with the system, and if users do make errors, they can easily recover from them. Catastrophic errors must not occur.
* _Satisfaction_: The user should find the system pleasant to use.

Clarifying the measurable aspects of usability is much better than aiming at a warm, fuzzy feeling of "user friendliness".

Usability is measured relative to certain users and certain tasks.

A system's overal usability can be determined as a set of measures, usually taken from the attributes given above. The mean of the measurements of each attribute are checked if they are better than a previously specified minimum or baseline. The baseline can also be used as calibration.

A _semantic differential scale_ lists two opposite terms along some dimension that asks the user to place a rating between each term to give a measurement. Typically the rating is a value from 1 to 5. An example of a semantic differential scale:

<table>
	<tr>
		<td>Pleasing</td>
		<td>_ _ _ _ _  </td>
		<td>Irritating</td>
	</tr>
	<tr>
		<td>Complete</td>
		<td>_ _ _ _ _  </td>
		<td>Incomplete</td>
	</tr>
	<tr>
		<td>Cooperative</td>
		<td>_ _ _ _ _  </td>
		<td>Uncooperative</td>
	</tr>
	<tr>
		<td>Simple</td>
		<td>_ _ _ _ _  </td>
		<td>Complicated</td>
	</tr>
	<tr>
		<td>Fast to use</td>
		<td>_ _ _ _ _  </td>
		<td>Slow to use</td>
	</tr>
	<tr>
		<td>Safe</td>
		<td>_ _ _ _ _  </td>
		<td>Unsafe</td>
	</tr>
</table>


A final rating for subjective satisfaction is often calculated simply as the mean of the rating for the individual answers (after compensating for any use of reverse polarity), but it is also possible to use more sophisticated methods, drawing upon rating scale theory from sociology and psychometrics.

Data showing voluntary usage is the ultimate subjective satisfaction rating.

## Example: Measuring the Usability of Icons

It is impossible to talk about the usability of an icon without knowing the context in which it will be shown and the circumstances under which it will be used.

A classic study of icons usability included:

* Four different sets of icons designed for a GUI with 17 icons
* All icons were tested for:
	- ease of learning
	- efficiency of use
	- subjective satisfaction

To test for ease of learning:

* _Intuitiveness_ of individual icons was tested by asking each user "what do you think this is"
* _Understandability_ of icon sets was shown to each user in their entirety. Users were given the icon name and short description of what it was supposed to do, and asked to point to the icon that best matched the description. Users were also given the complete set of names and asked to match all to their respective icon
* The score for these learning tests was the proportion of icons that were correctly desribed or named

To test for efficency of use:

* After users had progressed through the learning tests, they were given the name of icon and told that it could appear on the display. A random icon would appear and the user would press "yes" or "no" to indicate whether it was the icon they expected.
* Users were shown a randomized display of icons and asked to click on a specific icon
* These tests were timed and the score was the user's reaction time in seconds

To test for subjective satisfaction:

* Users were asked to rate each icon one at a time for how easy it was to pick out
* For each of the 17 concepts users were shown the four possible icons (one from each set that matched the concept) and asked which one they preferred
* The subjective score was the rating given by the user for the first test and the proportion of users who preferred it for the second test

The results of the tests indicated that many icons were not graphically distinct, and that the set that included the command names received consistently high scores. A fifth set of icons were developed for the final release of the system, based on the four sets and the test results.

Icons are probably easier to design for objects than for operations since many objects can be depicted representationally. 

## Usability Trade-Offs

It is often possible to design a user interface that multiple interaction styles such as one style that is easy to learn and one that is more efficient for frequently used operations. 

_Accelerators_ are user interface elements that allow the user to perform frequent tasks more quickly, even though the same tasks can also be performed in a more general, and possibly slower, way. Examples of accelerators:

* function keys
* command name abbreviations
* double-click to activate an object
* contextual pop-up menu

An interface that includes both novice and expert modes can be problematic; it is best to design such an interface where the novice isn't confronted with expert features and accelerators. This trade-off can be achieved without employing dual interactions styles; sometimes a carefully worded label on a form is enough for a novice but can be ignored by an expert.

Trade-offs between usability attributes are a natural outcome for any design process. Considerations other than usability may lead to designs violating some usability principles such as security or administrative tasks that typical users do not need to care about.

## Categories of Users and Individual User Differences

User experience can be described as three dimensions:

* Computer experience (minimal -> extensive)
* Domain knowledge (ignorant -> knowledgeable)
* System Expertise (novice -> expert)

Most people do not acquire comprehensive expertise in all parts of a system (or application); with so many features and uses that any given user will make extensive use of a subset. An "expert" could still be a novice in certain aspects of the system and still require help for those parts of the interface that are not visited that often.

Users' general experience of computers also has an impact on user interface design. A user familiar with a spreadsheet application will expect the "sort" function to be in a similar location on another spreadsheet application they are learning for the first time. 

Interfaces can be designed for users with extensive domain knowledge by including the specialized terminology of that domain. However, users with little understanding of the domain will need assistance in understanding what the application is doing at each step.

Since the ratio between best and worst users reflects the extremes and also depends on the number of users tested, one also commonly uses quartile ratios to express the magnitude of individual differences.

Given the differences between groups of users and between individual users, it is advisable not to allow the users to customize their user interfaces because _users are not designers_.



<nav class="nav-chapters">
	<ul>
		<li class="index"><a href="../index.html">Index</a></li>
		<li class="next-chapter"><a href="../chapter-04/">Next chapter</a></li>
	</ul>
</nav>