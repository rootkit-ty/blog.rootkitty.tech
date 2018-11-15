+++
title = "Remote code execution in emacs"
author = ["Ring <3 Rootkitty"]
date = 2018-11-15T11:55:00+11:00
draft = false
+++

So if you're like me and use emacs, there's a chance you'll also use emacs
protocol to capture bookmarks. I've recently discovered how this function can be
leveraged to perform code execution.

It's fairly convoluted, and requires user interaction, but you can go from
webpage to code running locally on the target with 2 user interactions.


## Org protocol {#org-protocol}

The root of the issue, and the first step is that org protocol does **not**
filter orgmode special characters from the input. This wouldn't be much of an
issue if it wasn't for org-babel.


## Org babel {#org-babel}

Babel allows code blocks to be embedded into an orgmode document and executed
when needed by the user. It can also write code to files on the file system.
This is where the heart of the problem lies. Org-babel assumes that the data
in an orgmode file is entirely user controlled, but this is not always the case.

Babels ability to write code to a file is called "Tangling" and has some
caveats. Specifically that you cannot "tangle" one single code block, you have
to tangle every code block in a file. This means that if **one** of those code
blocks is malicious, and tangles to `~/.bashrc`, anytime you tangle that file
the malicious code will be written to a file.


## Example {#example}

Say a user uses the org-capture chrome extension to capture web-pages for later
reading. This means that data from the webpage is being sent to emacs to be
handled. This data can be controlled by an attacker, in the title HTML tag.

The title is passed into an orgmode capture template and written to an orgmode
file. If said title contains a babel codeblock with a tangle pointing towards
`~/.bashrc`, that would be written to the file intact.

If you at any point tangle that file, or refile the entry to another file that
you will tangle, you will have the attackers code inside the babel codeblock
written to `~/.bashrc`

Thus with only two user interactions, and a willing attacker, one can get
malicious code running on the target machine.


## PoC {#poc}

Usually I'd format this in a orgmode codeblock, but as it's a nested codeblock it
breaks pretty much everything. So here's it in plaintext

> emacsclient "org-protocol:/capture:/google.com/]
>
> ```bash
> echo 'test'
> ```
>
> /test"

Run this command, tangle the file that the capture template you select writes
to. and you should see a test.sh file containing "echo 'test'", this can easily
be made to write to a location that will autoexecute the script.


## Potential mitigations {#potential-mitigations}

Perhaps org-capture should sanitise it's input
