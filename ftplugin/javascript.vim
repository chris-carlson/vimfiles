""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> clog console.log
iabbrev <buffer> con constructor
iabbrev <buffer> def default
iabbrev <buffer> exp export
iabbrev <buffer> fr from
iabbrev <buffer> fun function
iabbrev <buffer> imp import
iabbrev <buffer> jstr JSON.stringify
iabbrev <buffer> mod module
iabbrev <buffer> ret return
iabbrev <buffer> th this

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
nnoremap <silent> <buffer> [f ?\w\+(.*) {<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /\w\+(.*) {<CR>:noh<CR>

" Go to previous/next named function definition
nnoremap <silent> <buffer> [F ?^\w\+(.*) {<CR>:noh<CR>
nnoremap <silent> <buffer> ]F /^\w\+(.*) {<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert anonymous function body to a single/multi line body and either don't modify the body or delete/add the return statement
nnoremap <buffer> <localleader>ns ^f{xj$xj^x2kJJ
nnoremap <buffer> <localleader>nS ^f{xj^dw$xj^x2kJJ
nnoremap <buffer> <localleader>nm ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>
nnoremap <buffer> <localleader>nM ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>Ireturn<space><esc>$

" Add a parameter to the function
nnoremap <buffer> <localleader>ip ^f(a
nnoremap <buffer> <localleader>ap ^f)i,<space>
