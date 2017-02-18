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

" Convert anonymous function body with brackets to a single-line body and either don't modify the body or delete the return statement
nnoremap <buffer> <localleader>d{ ^f{xj$xj^x2kJJ
nnoremap <buffer> <localleader>D{ ^f{xj^dw$xj^x2kJJ

" Convert anonymous function body without brackets to a multi-line body and either don't modify the body or add a return statement
nnoremap <buffer> <localleader>a{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>
nnoremap <buffer> <localleader>A{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>Ireturn<space><esc>$

" Add a parameter to the function
nnoremap <buffer> <localleader>ipp ^f(a
nnoremap <buffer> <localleader>app ^f)i,<space>
