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
nnoremap <silent> <buffer> [t ?<[^/]\+><CR>:noh<CR>
nnoremap <silent> <buffer> ]t /<[^/]\+><CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add closing tag for non-attributed/attributed tag inline/below
nnoremap <buffer> <localleader>at ^lyt>$a<lt>/><esc>P$
nnoremap <buffer> <localleader>aT ^lyt<space>$a<lt>/><esc>P$
nnoremap <buffer> <localleader>At ^lyt>o<lt>/><esc>P<lt><lt>$
nnoremap <buffer> <localleader>AT ^lyt<space>o<lt>/><esc>P<lt><lt>$