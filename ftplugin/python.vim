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
nnoremap <buffer> <localleader>app ^f)i,<space>

" Add a self parameter to the function, then start the body or add another parameter
nnoremap <buffer> <localleader>aps $a(self):<CR>
nnoremap <buffer> <localleader>apS $a(self):<esc>hi,<space>
