" Vim filetype plugin file
" Language:	xslate
if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" matchit setting
let b:match_ignorecase = 1
let b:match_words = '<:>,' .
			\ '<\::\:>,{:},(:),' .
			\ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
			\ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
			\ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
