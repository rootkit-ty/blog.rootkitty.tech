{
	"title": "Go Hugo",
	"description": "Here I discuss how I managed to get hugo working on my web server",
	"tags":["meta", "software", "setup", "server"],
	"keywords":[
		"hugo",
		"rootkit.ty",
		"rootkitty",
		"blog",
		"software"
	],
	"catagories":[
		"meta",
		"server"
	],
	"date": "2017-09-26T14:25:34+10:00",
	"draft": true
}

## What is hugo?
Hugo is a wonderful program written in Golang (LINK) to create static HTML from templates and markdown files. It's fast, natively compiled, and does the job well.
<!--more-->
It's filled to the brim with features that I'm sure I won't find any use for. It also has a plethora of themes that you can easily switch between.

## How does it work?
Hugo works by simply rendering static MarkDown files (.md) with themes and templates, thus creating static HTML files.

What you do with these files is up to you. You can have them hosted using Hugo's built in server, or you can serve them up with Apache, NGINX, or anything else.

## My solution
To get all this working required a some-what convoluted, yet effective solution that botches together a few technologies.

The basic idea is that, a service account pulls a changes in a git repository, runs the hugo command, and apache will serve te updated static HTML.

It's not pretty but it does the job, and it's fairly secure.
