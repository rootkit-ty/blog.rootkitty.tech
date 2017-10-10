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
	"draft": false
}

## What is hugo?
[Hugo](https://gohugo.io) is a wonderful program written in [Golang](https://golang.org/) to create static HTML from templates and markdown files. It's fast, natively compiled, and does the job well.
<!--more-->
It's filled to the brim with features that I'm sure I won't find any use for. It also has a plethora of themes that you can easily switch between.

## How does it work?
Hugo works by simply rendering static MarkDown files (.md) with themes and templates, thus creating static HTML files.

What you do with these files is up to you. You can have them hosted using Hugo's built in server, or you can serve them up with Apache, NGINX, or anything else.

## My solution
To get all this working required a some-what convoluted, yet effective solution that botches together a few technologies.

The basic idea is that, a service account pulls changes in a [git repository](https://gitgud.io/rootkit.ty/rootkitty.tech/), runs the hugo command, and apache will serve te updated static HTML.

While it's not pretty, it does the job while remaning secure.

## Benifits
It provides a few benifits as well. Git provides a redundant backup for my blog content, and version control. I can make the creative process public, and even have a draft branch. Users can even mirror it if they feel the need.

All of these benifits while making it fairly secure. As there's no service listening to be exploited, no credentials to be brute forced, and NO dynamic content.

## Caveat
Sadly this does require some fiddling with Default ACL settings, and the creation of a service account. It's not too hard, but can be a of a hastle getting it seutp correctly.
