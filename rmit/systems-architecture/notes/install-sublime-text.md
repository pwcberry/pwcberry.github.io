---
layout: learning
title: Installing Sublime Text
permalink: /learning/installing-sublime-text/
---

# Installing Sublime Text on Linux

## Step 1

Download the tarfile that suits you best and extract it. Here’s the command to extract tar.bz2 files:

	tar xf Sublime\ Text\ 2.0.1\ x64.tar.bz2

## Step 2

Move the extracted folder  to the /opt/ folder:

	sudo mv Sublime\ Text\ 2 /opt/

## Step 3

Create symbolic link to launch Sublime:

	sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

## Step 4

Create desktop file:

	sudo sublime /usr/share/applications/sublime.desktop

And copy and paste this:

	[Desktop Entry]
	Version=1.0
	Name=Sublime Text 2
	# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
	# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413.
	GenericName=Text Editor

	Exec=sublime
	Terminal=false
	Icon=/opt/Sublime Text 2/Icon/48x48/sublime_text.png
	Type=Application
	Categories=TextEditor;IDE;Development
	X-Ayatana-Desktop-Shortcuts=NewWindow

	[NewWindow Shortcut Group]
	Name=New Window
	Exec=sublime -n
	TargetEnvironment=Unity

## Step 5

Associate text files with Sublime Text:

	`sudo sublime /usr/share/applications/defaults.list`

Replace all occurrences of gedit.desktop with sublime.desktop. 