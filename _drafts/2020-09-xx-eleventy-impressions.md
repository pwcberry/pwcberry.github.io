---
layout: post
title: Impressions of Eleventy
category: Web
tags: Web HTML JavaScript SSG
excerpt: I move my artist site from Gatsby to Eleventy, and this is what I find.
---

# Impressions of Eleventy

I recently heard about another static site generator (SSG) written for Node.js called [Eleventy](). As of the date for this post, it is at version 0.x, and while I am not one to be an "early adopter" I thought I would have a look.

Of late, I have been thinking about using less JavaScript in my websites. I have an [artist website](https://brunsnik.net) that was built using Gatsby. The website really is meant to be a traditional website: mostly HTML and CSS with a sprinkling of JavaScript. My plan was to move my tooling to Eleventy.

## Documentation

The authors of Eleventy sure like self-promotion! 

At times the documentation was a little confusing, but it did suit the method of skimming to what I wanted to know where I could then read in depth. (Perhaps I can contribute to the documentation). Nonetheless, the documentation is well-organized.


## Configuration

Eleventy allows you to specify where your data and your source files live. This is great because you can utilise some of the built-in features of Eleventy.

## Data

The data model in Eleventy is relatively simple.

### Organizing Data

Data can be:

* JSON files
* Node modules that export data fields
* Front-matter in documents

I wrote some scripts to generate the static data models I use for rendering the templates. It is possible to make use of some nice JavaScript features.

### Data Cascade

Once I understood the [data cascade](https://www.11ty.dev/docs/data-cascade/), I could reason better about what data fields are available in the template. What is visible to the engine while it rendered HTML when merging the Handlebars template with the data model.

### Permalinks

By default, Eleventy will publish documents using the URL path format of `/this/is-the-path-to-the-document/`. I preferred filenames with a `.html` extension so I adjusted how Eleventy determines permalink URLs. 


## Layouts

I was familiar with Handlebars so I could easily structure my layouts.


## Comparisons to Gatsby

The aim of Gatsby is to generate websites that feel like applications. The aim of Eleventy is to generate a website and it's up to you, the author, how much further you want to push the site into being an application.

It is nice that there are fewer files that are kept in production. There is a greater feeling of control over what is specified. With Gatsby you are reliant on the tool to generate all the paths correctly.

It does mean that if you want cache-busting URLs you will have to write your own tooling, or use Webpack or another bundler that can tap into your HTML files.

Gatsby has a great data model that interfaces well using GraphQL. Eleventy's data model is WYSIWYG and it's exactly how you specify it.

The simplicity of Eleventy is what I like. Gatsby does a lot of the heavy lifting for you. If you have a lots of documents and it stays mostly static (not liable to change greatly over a long period of time) then Eleventy is a good choice, especially if you are comfortable with template engines, HTML, CSS etc. Gatsby does take away some of that control but if your website does change more frequently and you have control over deployment, then Gatsby maybe a preferable choice.

---

References:

[Definition for SSG]
[Eleventy]
[Gatsby]
[Source - Toolsday ?]