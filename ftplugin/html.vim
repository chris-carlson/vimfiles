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

" Move to next/previous interpolation
nnoremap <silent> <Localleader>wi /\{\{\zs\w<CR>:noh<CR>
nnoremap <silent> <Localleader>bi ?\{\{\zs\w<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete attribute on a tag
nnoremap <buffer> <Localleader>dr hv/=".\{-}\zs"<CR>dl:noh<CR>

" Add/change/delete interpolation
nnoremap <buffer> <Localleader>ai a{{}}<esc>hi
nnoremap <buffer> <Localleader>cii 2lct}
nnoremap <buffer> <Localleader>cai c2f}
nnoremap <buffer> <Localleader>dii 2ldt}
nnoremap <buffer> <Localleader>dai d2f}
nnoremap <buffer> <Localleader>yii 2lyt}
nnoremap <buffer> <Localleader>yai y2f}
