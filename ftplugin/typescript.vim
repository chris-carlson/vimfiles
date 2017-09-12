""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> boo boolean
iabbrev <buffer> cl class
iabbrev <buffer> clog console.log
iabbrev <buffer> con constructor
iabbrev <buffer> exp export
iabbrev <buffer> imp import
iabbrev <buffer> impl implements
iabbrev <buffer> jstr JSON.stringify
iabbrev <buffer> num number
iabbrev <buffer> pri private
iabbrev <buffer> pub public
iabbrev <buffer> ret return
iabbrev <buffer> str string
iabbrev <buffer> th this
iabbrev <buffer> vo void

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next class
nnoremap <silent> <buffer> [c ?^export<space>class<space>\w\+<space>\(\(\w\+<space>\)\{2\}\)\={<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /^export<space>class<space>\w\+<space>\(\(\w\+<space>\)\{2\}\)\={<CR>:noh<CR>

" Go to constructor
nnoremap <silent> <buffer> [C ?constructor<CR>:noh<CR>
nnoremap <silent> <buffer> ]C /constructor<CR>:noh<CR>

" Go to ngOnInit function
nnoremap <silent> <buffer> [i ?ngOnInit().*{<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /ngOnInit().*{<CR>:noh<CR>

" Go to previous/next function
nnoremap <silent> <buffer> [f ?\w\+(.*):<space>\S\+<space>{<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /\w\+(.*):<space>\S\+<space>{<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert anonymous function body to a single/multi line body and either don't modify the body or delete/add the return statement
nnoremap <buffer> <localleader>d{ ^f{xj$xj^x2kJJ
nnoremap <buffer> <localleader>D{ ^f{xj^dw$xj^x2kJJ
nnoremap <buffer> <localleader>a{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>
nnoremap <buffer> <localleader>A{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>Ireturn<space><esc>$

" Add a parameter to the function
nnoremap <buffer> <localleader>p ^f(a
nnoremap <buffer> <localleader>P ^f)i,<space>

" Convert typeless parameter/function to a typed one
nnoremap <buffer> <localleader>tp i(<esc>ea:<space>)<esc>i
nnoremap <buffer> <localleader>tf ^f)a:<space>

" Add import statement
nnoremap <buffer> <localleader>il oimport<space>{<space><space>}<space>from<space>'';F{la
nnoremap <buffer> <localleader>iL o<CR>import<space>{<space><space>}<space>from<space>'';F{la

" Change import name/path
nnoremap <buffer> <localleader>ii ^f{wdt}hi<space>
nnoremap <buffer> <localleader>if ^f'ci'
