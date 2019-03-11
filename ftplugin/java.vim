""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next class definition
nnoremap <silent> <buffer> [c ?\(class\\|enum\\|interface\)\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /\(class\\|enum\\|interface\)\s\zs\w\+<CR>:noh<CR>

" Go to previous/next constructor
nnoremap <silent> <buffer> [n ?\s\zs\u\w\+([^)]\{-})\s{<CR>:noh<CR>
nnoremap <silent> <buffer> ]n /\s\zs\u\w\+([^)]\{-})\s{<CR>:noh<CR>

" Go to previous/next method definition
nnoremap <silent> <buffer> [m ?\s\zs\l\w\+([^)]\{-})\s{<CR>:noh<CR>
nnoremap <silent> <buffer> ]m /\s\zs\l\w\+([^)]\{-})\s{<CR>:noh<CR>

" Go to previous/next instance variable
nnoremap <silent> <buffer> [i ?private\s\w\+\(<.*>\)\=\s\zs\w\+;<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /private\s\w\+\(<.*>\)\=\s\zs\w\+;<CR>:noh<CR>

" Go to previous/next constant
nnoremap <silent> <buffer> [t ?final\s\w\+\(<.*>\)\=\s\zs\w\+<CR>:noh<CR>
nnoremap <silent> <buffer> ]t /final\s\w\+\(<.*>\)\=\s\zs\w\+<CR>:noh<CR>

" Go to previous/next parameter name
nnoremap <silent> <buffer> [p ?\w\+\(<\([A-z,]\\|\s\\|\(<.*>\)\)*>\)\=\s\zs\w\+\(,\\|)\)<CR>:noh<CR>
nnoremap <silent> <buffer> ]p /\w\+\(<\([A-z,]\\|\s\\|\(<.*>\)\)*>\)\=\s\zs\w\+\(,\\|)\)<CR>:noh<CR>

" Go to previous/next parameter type
nnoremap <silent> <buffer> [P ?\w\+\(<\([A-z,]\\|\s\\|\(<.*>\)\)*>\)\=\s\w\+\(,\\|)\)<CR>:noh<CR>
nnoremap <silent> <buffer> ]P /\w\+\(<\([A-z,]\\|\s\\|\(<.*>\)\)*>\)\=\s\w\+\(,\\|)\)<CR>:noh<CR>

" Go to previous/next condition
nnoremap <silent> <buffer> [d ?\(\(\(if\\|while\)\s(\)\\|&&\s\\|\|\|\s\)\zs.<CR>:noh<CR>
nnoremap <silent> <buffer> ]d /\(\(\(if\\|while\)\s(\)\\|&&\s\\|\|\|\s\)\zs.<CR>:noh<CR>

" Move to class name in import statement or last part of package
nnoremap <buffer> <Localleader>wi $F.l

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to the function
nnoremap <buffer> <Localleader>ip ^f(a
nnoremap <buffer> <Localleader>ap ^f)i,<space>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-pairs
let g:AutoPairs['<']='>'
