""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> cha chauffeur
iabbrev <buffer> clog console.log
iabbrev <buffer> exp exports
iabbrev <buffer> fe forEach
iabbrev <buffer> fun function
iabbrev <buffer> jstr JSON.stringify
iabbrev <buffer> mod module
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

" Go to previous/next named function definition
nnoremap <silent> <buffer> [F ?^function.*(.*) {<CR>:noh<CR>
nnoremap <silent> <buffer> ]F /^function.*(.*) {<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert anonymous function body to a single/multi line body and either don't modify the body or delete/add the return statement
nnoremap <buffer> <localleader>d{ ^f{xj$xj^x2kJJ
nnoremap <buffer> <localleader>D{ ^f{xj^dw$xj^x2kJJ
nnoremap <buffer> <localleader>a{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>
nnoremap <buffer> <localleader>A{ ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>Ireturn<space><esc>$

" Add a parameter to the function
nnoremap <buffer> <localleader>p ^f(a
nnoremap <buffer> <localleader>P ^f)i,<space>
