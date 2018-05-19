---
title: "An Update"
date: 2018-03-19T18:36:22+11:00
description: "An update regarding the future of my blog, and it's hosting"
keywords: ["s3", "cd", "continuous deployment", "update"]
categories: "meta"
tags: ["meta", "update"]
draft: false
---

# An update and Github pages

## The update

Well it's been a while since I've posted anything, and that's because life has gotten a little hectic and haven't had as much time dedicated to this blog.

I have a few draft posts that I'll continue to work on until they get published and I have a few more planned. Hopefully they'll be interesting and provide an insight.

## Code pipeline and Cloudformation

Currently my website is being automatically deploy from git to an AWS S3 bucket through AWS codepipeline.
The whole setup will soon be migrated into a cloudformation template so that anyone can deploy my blog or any other hugo related blog.

## The static hugo

You may now find a static hugo binary in the github repo. This is because the hugo version I was downloading and using was having issues with my theme. So I decided to pin a version I know that works.

The solution is not elegant but will provide a temporary solution till I get around to resolving the issue.
