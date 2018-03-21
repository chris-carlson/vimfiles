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
nnoremap <silent> <buffer> [r ?\S\+=".\{-}"\(\s\\|>\)<CR>:noh<CR>
nnoremap <silent> <buffer> ]r /\S\+=".\{-}"\(\s\\|>\)<CR>:noh<CR>

" Go to previous/next inner tag
nnoremap <silent> <buffer> [i ?<[^/]\+>\zs.<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /<[^/]\+>\zs.<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete attribute on a tag
nnoremap <buffer> <localleader>dr hv/=".\{-}\zs"<CR>dl:noh<CR>

" Add/change/delete interpolation
nnoremap <buffer> <localleader>ai a{{}}<esc>hi
nnoremap <buffer> <localleader>cii 2lct}
nnoremap <buffer> <localleader>cai c2f}
nnoremap <buffer> <localleader>dii 2ldt}
nnoremap <buffer> <localleader>dai d2f}
nnoremap <buffer> <localleader>yii 2lyt}
nnoremap <buffer> <localleader>yai y2f}
