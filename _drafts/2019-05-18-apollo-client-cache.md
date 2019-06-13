---
layout: post
title: 
category:
tags:
excerpt:
---

# React, GraphQL and the Apollo Client library

Came across an interesting situation in an application. Looked like the cache was storing objects and when the cache was triggered,
was returning an object that had been replaced and showing the wrong object data.

So I investigated what the Apollo Client does.

The moral: with GraphQL, don't use `id` as a field to carry an ID. Sounds counter-intuitive, but if 
the model needs an ID, name the ID field after the model.
