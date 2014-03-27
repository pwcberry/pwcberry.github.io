---
layout: learning
title: Installing Sublime Text
permalink: /learning/installing-idea/
---

# Installing IntelliJ IDEA on Linux

## Step 1

Download and extract the tar ball.

## Step 2

Relocate the extracted idea folder.

	sudo mv /tmp/idea* /opt/idea

## Step 3

Create symbolic link to launch idea:

	ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea

