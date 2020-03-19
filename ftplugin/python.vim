""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> imp import

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

" Go to previous/next parameter
nnoremap <silent> <buffer> [p ?\((\\|,\s\)\zs\w\+:\s<CR>:noh<CR>
nnoremap <silent> <buffer> ]p /\((\\|,\s\)\zs\w\+:\s<CR>:noh<CR>

" Go to previous/next return type
nnoremap <silent> <buffer> [r ?->\s\zs\(\w\\|'\)\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]r /->\s\zs\(\w\\|'\)\+<CR>:noh<CR>

" Go to previous/next condition
nnoremap <silent> <buffer> [d ?\(\(\(if\\|while\)\s\)\\|and\s\\|or\s\)\zs.<CR>:noh<CR>
nnoremap <silent> <buffer> ]d /\(\(\(if\\|while\)\s\)\\|and\s\\|or\s\)\zs.<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Paste variable assigned in current line in next line for function call
nnoremap <buffer> <Localleader>pv ^yeo#<Esc>"_xpa.

" Insert and/or condition
nnoremap <Leader>ia i<Space>and<Space><Esc>bhi
nnoremap <Leader>io i<Space>or<Space><Esc>bhi
