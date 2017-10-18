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
