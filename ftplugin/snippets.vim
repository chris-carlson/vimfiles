""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev snip snippet
iabbrev end endsnippet

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next snippet
nnoremap <silent> <buffer> [s ?snippet\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]s /snippet\s\zs\w\+<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert named tabstop into unnamed one
nnoremap <Localleader>d: xldf}

" Delete tabstop but preserve inside
nnoremap <Localleader>d$ xl2xhdi{hPl2xB
