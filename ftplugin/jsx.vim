""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next tag
nnoremap <silent> <buffer> [t ?<\zs[^/]\+\/\=><CR>:noh<CR>
nnoremap <silent> <buffer> ]t /<\zs[^/]\+\/\=><CR>:noh<CR>

" Go to previous/next attribute
nnoremap <silent> <buffer> [r ?\w\+=".\{-}"\(\s\\|>\)<CR>:noh<CR>
nnoremap <silent> <buffer> ]r /\w\+=".\{-}"\(\s\\|>\)<CR>:noh<CR>

" Go to previous/next inner tag
nnoremap <silent> <buffer> [i ?<[^/]\+>\zs.<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /<[^/]\+>\zs.<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete attribute on a tag
nnoremap <buffer> <localleader>dr v/=".\{-}\("\zs\s\\|\zs"\ze>\)<CR>d:noh<CR>
