runtime! syntax/html.vim
unlet b:current_syntax

syntax keyword txKeyword constant include cascade around block override macro contained
syntax keyword txSpecial nil true false contained
syntax match txKeyword +contains+ contained

syntax include @inlinePerl syntax/perl.vim
syntax cluster inlinePerl remove=perlFunctionName remove=perlElseIfError remove=perlBraces
syntax clear perlElseIfError
syntax region txBlock   matchgroup=txDelim start=+<:+ end=+:>+ contains=txKeyword,txSpecial,txComment,@inlinePerl containedin=ALL keepend
syntax match  txBlock   +^\s*:.*$+ contains=txDelim,txKeyword,txSpecial,txComment,@inlinePerl
syntax match  txDelim   +:+ contained
syntax match  txComment +#[^;]*+ contained

highlight default link txKeyword Function
highlight default link txDelim   Special
highlight default link txSpecial Special
highlight default link txComment Comment

let b:current_syntax = 'xslate'
