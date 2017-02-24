""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> cl class
iabbrev <buffer> fr from
iabbrev <buffer> imp import
iabbrev <buffer> init def __init__(self):
iabbrev <buffer> pr print
iabbrev <buffer> prop @property
iabbrev <buffer> ret return
iabbrev <buffer> stat @staticmethod

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next class definition
nnoremap <silent> <buffer> [c ?^class<space>\w\+:<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /^class<space>\w\+:<CR>:noh<CR>

" Go to previous/next init
nnoremap <silent> <buffer> [i ?def<space>__init__(.*):<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /def<space>__init__(.*):<CR>:noh<CR>

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?def<space>\w\+(.*):<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /def<space>\w\+(.*):<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to the function
nnoremap <buffer> <localleader>p ^f(ea,<space>
nnoremap <buffer> <localleader>P ^f)i,<space>

" Add a self parameter to the function, then start the body or add another parameter
nnoremap <buffer> <localleader>ss ^f(aself<esc>
nnoremap <buffer> <localleader>sb ^f(a(self):<CR>
nnoremap <buffer> <localleader>sp ^f(a(self):<esc>hi,<space>

" Add a range to a list
nnoremap <buffer> <localleader>r irange(0,<space>len(<esc>ea))<esc>
nnoremap <buffer> <localleader>R irange(0,<space>len(<esc>Ea))<esc>

" Add a double-underscore function
nnoremap <buffer> <localleader>_ S<tab>def<space>____(self):<esc>^f_;a
