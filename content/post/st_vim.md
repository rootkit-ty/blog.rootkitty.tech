{
	"title": "ST Vim",
	"description": "Fixing the ST vim bug",
	"tags":["fix"],
	"keywords":[
		"simple",
		"terminal",
		"st",
		"true",
		"colors",
		"vim",
		"termguicolors"
	],
	"catagories":[
		"fix"
	],
	"date": "2018-05-19T20:34:01+10:00",
	"draft": false
}
# ST and True Colours in Vim

Here's a quick post for people struggling to get the Simple Terminal (ST) from https://st.suckless.org to display true colours correctly in vim.

This issue may manifest as a problem with the `:set termguicolors` option in vim with the ST terminal.

<!--more-->

## So what's the solution?

I'm guessing your eager to find the solution to this issue if you've encountered it so I won't get in the way. All you need to do is add the following lines to your `vimrc` file.

```vimrc
" Add this to your vimrc to resolve the issue
" Found at https://github.com/vim/vim/issues/993#issuecomment-255651605
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

## What's the deal with this post?

Well I encounterd this issue and finding a fix was actually a little tricky, so I thought I might try to make it easier to find the fix. That's also why the blog might be a little weirdly worded, because I tried to fit in as many keywords into the body as I could.
