""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add object/array without/with trailing comma
nnoremap <buffer> <localleader>ao o{<CR>}<esc>O
nnoremap <buffer> <localleader>aO o{<CR>},<esc>O
nnoremap <buffer> <localleader>aa o[<CR>]<esc>O<tab>
nnoremap <buffer> <localleader>aA o[<CR>],<esc>O<tab>
