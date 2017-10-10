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

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add closing tag for tag inline/below
nnoremap <buffer> <localleader>t ^lv/\s\\|><CR>hy$a<lt>/<esc>pa><esc>$:noh<CR>
nnoremap <buffer> <localleader>T ^lv/\s\\|><CR>hyo<lt>/<esc>pa><esc>:noh<CR>O

" Delete attribute on a tag
nnoremap <buffer> <localleader>dr v/=".\{-}\("\zs\s\\|\zs"\ze>\)<CR>d:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-pairs
let g:AutoPairs['<']='>'
