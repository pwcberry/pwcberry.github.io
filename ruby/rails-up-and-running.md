---
layout: default
title: Ruby on Rails; Up and Running
permalink: /ruby/rails-up-and-running/
---

# Rails: Up And Running

I'm learning Ruby at the same time as learning the fabulous _Ruby on Rails_.

Chapter 1
---------

A few tips regarding Ruby on Rails version 4.

```sh
rails new chapter-1
```

This command creates a new directory, `chapter-1`, and fills it with scaffolding for a new Ruby on Rails project.

```sh
rails generate controller greeting index
```

This command creates a new controller and an ERb view file called index. The generator also creates a method in the `GreetingController` class.

```sh
rails d generate controller greeting
```

This command removes the scaffolding produced by the generator.

Published: {{ site.time | date: "%-d %B %Y, %R" }}