runtime! ftplugin/javascript.vim

""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> boo boolean
iabbrev <buffer> impl implements
iabbrev <buffer> num number
iabbrev <buffer> pri private
iabbrev <buffer> pub public
iabbrev <buffer> str string
iabbrev <buffer> vo void

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to ngOnInit function
nnoremap <silent> <buffer> [i ?ngOnInit().*{<CR>:noh<CR>
nnoremap <silent> <buffer> ]i /ngOnInit().*{<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Convert typeless parameter/function to a typed one
nnoremap <buffer> <Localleader>tp i(<esc>ea:<space>)<esc>i
nnoremap <buffer> <Localleader>tf ^f)a:<space>

" Change import name/path
nnoremap <buffer> <Localleader>ii ^f{wdt}hi<space>
nnoremap <buffer> <Localleader>if ^f'ci'
