""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Move to next/previous part of a file path
nnoremap <silent> <Leader>wp /\([A-Z]:\)\\|\(\/\zs.\)<CR>:noh<CR>
nnoremap <silent> <Leader>bp ?\([A-Z]:\)\\|\(\/\zs.\)<CR>:noh<CR>
