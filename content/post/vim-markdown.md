---
title: "Vim Markdown"
date: 2017-10-01T16:00:58+11:00
draft: true
---

Writing plaintext documents in vim is a breeze, especially if you start writing a workflow designed to specifically work with the type of file you're working with.

Thanks to a few improvements we can make writing Hugo posts a breeze, even when using some of the more complex markdown features provided by themes, such as [Nuo](https://github.com/laozhu/hugo-nuo).

<!--more-->

## Plaintext workflow in Vim
So it turns out Vim is really good for editing plaintext documents with very little keypresses and in a short peroid of time.

That may be apart of the design of Vim, but with a few tweaks you can improve your workflow considerably.

Thanks to [Luke Smith](https://www.youtube.com/watch?v=Q4I_Ft-VLAg) and his wonderous vim setup using inoremap and placeholders, we can improve our workflow on various plaintext documents.

## How can we apply this to markdown?
Well it's very simple to apply this to markdown. We simply need to find all the tags we use, and apply a bind for them.

An example of one I have created is one that inserts the `<!--more-->` tag after some text.

I have mine setup in insert mode so that typing <kbd>;m</kbd> will create two new lines, type out `<!--more-->` and then create two more new lines.

The line to add to your .vimrc to do this is `autocmd Filetype markdown inoremap ;m <Return><Return><!--more--><Return><Return>`

Let me explain in some detail what the line above performs. It will first, only execute if it is a markdown file. This is what the `autocmd Filetype markdown` section means.

The second part, `inoremap ;m` means that it will map the key combination of <kbd>;m</kbd> to performing keystrokes outlined in the third section

The third and final secion is the most complex, but contains the literal keystrokes that you would perform in vim, while in insert mode, to achieve adding the new lines and the `<!--more-->` tag.

## More bindings for nuo
Since I use Nuo, I will provide a list of lines that you can add to your .vimrc bellow.
