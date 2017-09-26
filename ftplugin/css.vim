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
nnoremap <buffer> <localleader>st o<CR>{<CR>}<esc>kI<space><esc>i
nnoremap <buffer> <localleader>si o<CR>{<CR>}<esc>kI<space><esc>i#
nnoremap <buffer> <localleader>sc o<CR>{<CR>}<esc>kI<space><esc>i.
