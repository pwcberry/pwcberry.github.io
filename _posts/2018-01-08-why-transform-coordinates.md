---
layout: post
title: Why you need to transform coordinates to perform arithmetic
category: algorithms
tags: algorithms coordinates locations technical thinking-aloud
excerpt: I had to discover a way to calculate the central point for locations and I want to understand why this method is preferred
---

# Why you need to transform coordinates to perform arithmetic

Recently I was working a problem where I had to display locations on Google Maps but I needed to provide a center point for the map to be rendered.

(As a side note, I was working with React and the useful library [`react-google-maps`](https://www.npmjs.com/package/react-google-maps)).

I scratched my head and thought, "I probably could calculate the minimum and maximum and then halve them", which is probably too simplistic; anyway, it wouldn't work for more than 2 locations. Then I thought, "maybe I could find the average". I resorted to Google and found a Stack Overflow post.

The post offers various language implementations for the calculation of the center point (or **centroid**) of a list (or array) of coordinates based on `latitude` and `longitude`. The data I would be plotting already caters for these properties. What is interesting is that the coordinates - often termed **geodetic coordinates** are converted into Cartesian coordinates of **x**, **y**, and **z** from which the central point is calculated and then are converted back into latitude and longitude, thus giving you the answer.

The Stack Overflow post and a couple of other posts I incidentally browsed didn't offer any explanation of _why_ the transformation has to be made. A friendly discussion with colleagues came up with ideas relating to the earth as a sphere and distances involved with lines of latitude and longitude. A bit of further research showed we were heading up the right track.

I first came about this article [Calculation Methods](http://www.geomidpoint.com/methods.html) which hinted at geographical midpoints and just averaging longitude and latitude. However, the average is not as accurate as the calculation including the transformation. Over on Wikipedia, the article [Geographic coordinate conversion](https://en.wikipedia.org/wiki/Geographic_coordinate_conversion) gives in-depth discussion about numerous calculations needed for conversions between various coordinate systems, including the geodetic and Carteisian or **ECEF coordinates**.

It was this article on [ECEF](https://en.wikipedia.org/wiki/ECEF) that helped me understand what the transformation was about. The article includes a graphic of the `x`, `y`, and `z` coordinates as plotted on a sphere representing the earth and shows that:

<img src="https://upload.wikimedia.org/wikipedia/commons/7/7b/ECEF.svg" alt="Diagram of Earth Centered, Earth Fixed coordinates in relation to latitude and longitude" style="width:320px;float:right"/>

* **x-axis** represents the earth's equator (0&deg; latitude)
* **y-axis** represents the angle measured from the prime meridian (0&deg; longitude) and is orthongal (at 90&deg;) to the x-axis
* **z-axis** represents the line that is drawn through the poles

In other words, the `x` and `y` axes are used to calculate longitude and the `z` axis is used to calculate latitude. These coordinates are usually measured in metres and allows typical arithmetic to be performed without the complications that can be found when dealing with angles, especially if sums exceed 360&deg;.
It also helps to retain a high-degree of accuracy (JavaScript `Math` trig functions notwithstanding).


