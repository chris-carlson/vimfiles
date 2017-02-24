""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> clog console.log
iabbrev <buffer> fun function
iabbrev <buffer> jstr JSON.stringify
iabbrev <buffer> ret return

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?function.*(.*) {<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /function.*(.*) {<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to the function
nnoremap <buffer> <localleader>p ^f(a
nnoremap <buffer> <localleader>P ^f)i,<space>
