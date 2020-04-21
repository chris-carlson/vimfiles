""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next class
nnoremap <silent> <buffer> [c ?class\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /class\s\zs\w\+<CR>:noh<CR>

" Go to constructor
nnoremap <silent> <buffer> [n ?constructor<CR>:noh<CR>
nnoremap <silent> <buffer> ]n /constructor<CR>:noh<CR>

" Go to previous/next function definition
nnoremap <silent> <buffer> [f ?\s\+\zs\w\+(.*)\s{<CR>:noh<CR>
nnoremap <silent> <buffer> ]f /\s\+\zs\w\+(.*)\s{<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert anonymous function body to a single/multi line body and either don't modify the body or delete/add the return statement
nnoremap <buffer> <Localleader>ns ^f{xj$xj^x2kJJ
nnoremap <buffer> <Localleader>nS ^f{xj^dw$xj^x2kJJ
nnoremap <buffer> <Localleader>nm ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>
nnoremap <buffer> <Localleader>nM ^f>wi{<CR><esc>$k^f(%i<CR>}<esc>kA;<esc>Ireturn<space><esc>$

" Add a parameter to the function
nnoremap <buffer> <Localleader>ip ^f(a
nnoremap <buffer> <Localleader>ap ^f)i,<space>

" Insert and/or condition
nnoremap <Leader>i& i<Space>&&<Space><Esc>3hi
nnoremap <Leader>i\| i<Space>\|\|<Space><Esc>3hi

" Invert boolean
nnoremap <Leader>sbt cetrue<Esc>
nnoremap <Leader>sbf cefalse<Esc>
