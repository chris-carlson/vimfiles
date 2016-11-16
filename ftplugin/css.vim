""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next selector
nnoremap <silent> <buffer> [s ?^\(\S\+<space>\)\+{<CR>:noh<CR>
nnoremap <silent> <buffer> ]s /^\(\S\+<space>\)\+{<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add new tag/id/class selector
nnoremap <buffer> <localleader>ast o<CR>{<CR>}<esc>kI<space><esc>i
nnoremap <buffer> <localleader>asi o<CR>{<CR>}<esc>kI<space><esc>i#
nnoremap <buffer> <localleader>asc o<CR>{<CR>}<esc>kI<space><esc>i.
