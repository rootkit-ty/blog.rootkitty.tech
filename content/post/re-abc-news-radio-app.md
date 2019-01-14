+++
title = "ABC Radio News App Hacking"
author = ["Ring <3 Rootkitty"]
date = "2019-01-14T16:17:00"
tags = ["BLOG", "ABC", "android", "app"]
categories = ["reverse-engineering"]
draft = false
+++

So the ABC is usually pretty good at provding many workflow agnostic methods of
consuming their media. From RSS feeds to MP3 streams, it's all super cool stuff.

They recently created a new radio app though, ABC Listen, which has some content
only avaliable on it. Most noteably the Latest News Bulletin, which is a small
digest of the current news today updated by the hour.

This is really cool, and useful, but it requires you to use the app to access
it. At least through conventional methods, but where there's a will, there's a
way. And as a Linux user, I have an iron will.


## OSINT {#osint}

When I first started digging for this, I was hoping to get somewhere through
just the ABCs publically facing infrastructure, as they're usually pretty good
at providing this sort of stuff, but after much trolling of their website, I
came back empty handed.

I found that news snippets are stored at
<https://abcmedia.akamaized.net/newsradio/audio/201812/> but it would seem that
you cannot index this without just parsing the web page.

So through some hefty digging I still am no further from a machine friendly way
to access the News Bulletin.


## The app {#the-app}

So as I mentioned, it's avaliable through the app, but I really don't want to
use it.

tools. Since the rise of android malware there have been various services for
analysing apk files online, such as [SandDroid](http://sanddroid.xjtu.edu.cn/#overview).

So I threw the APK in there, and see what HTTP requests it made, and bingo it
makes a request to <http://fred.aimapi.io/services/abc/newsbulletin>, which
returns a JSON file containing the most recent News Bulletin MP3 file for streaming.


## Conclusion {#conclusion}

<http://fred.aimapi.io/services/abc/newsbulletin> is the endpoint used to retreive
the location of the NEws Bulletin MP3, it's updated every hour so you don't have
to worry about anything else.

I plan to get this to automatically play in the morning while I'm showering.
