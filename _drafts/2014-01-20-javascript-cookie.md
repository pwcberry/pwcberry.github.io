---
layout: post
title: Cookies and JavaScript
category: javascript
tags: javascript cookies
published: false
---

Cookies and JavaScript
======================

I managed to succeed in deleting a cookie in the browser today. A pointer came from NGZ's article [].

But, the way the cookie is set in the HTTP Headers (discovered in Firebug) also determines how the browser will accept modifications to that same cookie. So the server (or event the browser in the client headers) sends a cookie with additional properties, manipulating the `document.cookie` for that cookie also has to include the same properties.

The string value must not terminate with a `;` (semicolon).
