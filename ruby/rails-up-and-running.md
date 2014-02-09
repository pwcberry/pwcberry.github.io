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

Deployment
----------

1. For the `<VirtualHost>`, set `DocumentRoot` to the path of the `public` folder in the Rails app
2. Ensure the user has authorization to access the directory
3. Precompile the assets: `rake assets:precompile`
4. To restart the file, in the root of the application directory, type `touch tmp/restart.txt`
5. Further info on assets: [Rails Guides](guides.rubyonrails.org/asset_pipeline.html)
6. Further tips on deployment: 
	* [How to deploy a Rails 3 application with Phusion Passenger](http://kb.site5.com/ruby-on-rails/how-to-deploy-a-rails-3-application-with-phusion-passenger/)
	* [How to: Ruby on Rails + Ubuntu + Apache with Passenger](http://nathanhoad.net/how-to-ruby-on-rails-ubuntu-apache-with-passenger)

There is probably a way to remove the "revved" portion of the asset URL.

