""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> br break
iabbrev <buffer> cl class
iabbrev <buffer> con continue
iabbrev <buffer> fr from
iabbrev <buffer> imp import
iabbrev <buffer> pr print
iabbrev <buffer> prop @property
iabbrev <buffer> ret return
iabbrev <buffer> se self
iabbrev <buffer> set setter
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
nnoremap <silent> <buffer> [c ?^class<space>\w\+:<CR>:noh<CR>w
nnoremap <silent> <buffer> ]c /^class<space>\w\+:<CR>:noh<CR>w

" Go to previous/next init
nnoremap <silent> <buffer> [i ?def<space>__init__(.*):<CR>:noh<CR>w
nnoremap <silent> <buffer> ]i /def<space>__init__(.*):<CR>:noh<CR>w

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?def<space>\w\+(.*):<CR>:noh<CR>w
nnoremap <silent> <buffer> ]f /def<space>\w\+(.*):<CR>:noh<CR>w

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a standard/class function
nnoremap <buffer> <localleader>ff S<tab>def<space>():<esc>F(i
nnoremap <buffer> <localleader>fc S<tab>def<space>(self):<esc>F(i

" Add a parameter to a standard/class function
nnoremap <buffer> <localleader>pp ^f(a,<space>
nnoremap <buffer> <localleader>pc ^f(ea,<space>
nnoremap <buffer> <localleader>P ^f)i,<space>

" Add a self parameter to the function, then do nothing, start the body, or add another parameter
nnoremap <buffer> <localleader>ss ^f(aself<esc>
nnoremap <buffer> <localleader>sb ^f(a(self):<CR>
nnoremap <buffer> <localleader>sp ^f(a(self):<esc>hi,<space>

" Add a range to a list
nnoremap <buffer> <localleader>r irange(0,<space>len(<esc>f:i))<esc>

" Add a double-underscore function
nnoremap <buffer> <localleader>_in Sdef<space>__init__(self):<esc>
nnoremap <buffer> <localleader>_st S<tab>def<space>__str__(self):<esc>
nnoremap <buffer> <localleader>_r S<tab>def<space>__repr__(self):<esc>
nnoremap <buffer> <localleader>_l S<tab>def<space>__len__(self):<esc>
nnoremap <buffer> <localleader>_it S<tab>def<space>__iter__(self):<esc>
nnoremap <buffer> <localleader>_gi S<tab>def<space>__getitem__(self):<esc>hi,<space>
nnoremap <buffer> <localleader>_si S<tab>def<space>__setitem__(self):<esc>hi,<space>

" Add log statement with yanked variable
nnoremap <buffer> <localleader>l oprint('<esc>pa:<space>'<space>+<space>str(<esc>pa))<esc>
nnoremap <buffer> <localleader>L Oprint('<esc>pa:<space>'<space>+<space>str(<esc>pa))<esc>
