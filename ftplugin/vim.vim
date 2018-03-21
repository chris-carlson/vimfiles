""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Remaps
iabbrev <buffer> com command!
iabbrev <buffer> cno cnoremap
iabbrev <buffer> iab iabbrev
iabbrev <buffer> ino inoremap
iabbrev <buffer> nno nnoremap
iabbrev <buffer> vno vnoremap

" Special words
iabbrev <buffer> buf <lt>buffer>
iabbrev <buffer> cr <lt>CR>
iabbrev <buffer> cv <lt>C-V>
iabbrev <buffer> lead <lt>Leader>
iabbrev <buffer> local <lt>Localleader>
iabbrev <buffer> noh :noh<lt>CR>
iabbrev <buffer> sil <lt>silent>
iabbrev <buffer> sp <lt>Space>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" autopairs
let b:AutoPairs={}

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <buffer> <Leader>a@ i@='<Esc>A'<lt>CR><Esc>jB
nnoremap <buffer> <Leader>d@ df'$F'DjB
