""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next measure
nnoremap <silent> <buffer> [m ?\([\\|\|\s\)\zs\w<CR>:noh<CR>
nnoremap <silent> <buffer> ]m /\([\\|\|\s\)\zs\w<CR>:noh<CR>
