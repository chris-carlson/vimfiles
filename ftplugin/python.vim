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
nnoremap <silent> <buffer> [c ?class\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /class\s\zs\w\+<CR>:noh<CR>

" Go to previous/next init
nnoremap <silent> <buffer> [i ?def\s\zs__init__<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /def\s\zs__init__<CR>:noh<CR>

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?def\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /def\s\zs\w\+<CR>:noh<CR>

" Go to previous/next condition
nnoremap <silent> <buffer> [d ?\(\(\(if\\|while\)\s\)\\|and\s\\|or\s\)\zs.<CR>:noh<CR>
nnoremap <silent> <buffer> ]d /\(\(\(if\\|while\)\s\)\\|and\s\\|or\s\)\zs.<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to a function
nnoremap <buffer> <Localleader>ip ^f(a,<space>
nnoremap <buffer> <Localleader>ap ^f)i,<space>

" Convert a standard for loop to a range for loop
nnoremap <buffer> <Localleader>r ^2ea_index<esc>2wirange(0,<space>len(<esc>f:i))<esc>$

" Paste variable assigned in current line in next line
nnoremap <buffer> <Localleader>pv ^yeo#<Esc>"_xpa
