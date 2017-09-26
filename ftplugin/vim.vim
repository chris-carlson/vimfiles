""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Remaps
iabbrev <buffer> com command!
iabbrev <buffer> cno cnoremap
iabbrev <buffer> ino inoremap
iabbrev <buffer> nno nnoremap
iabbrev <buffer> vno vnoremap

" Special words
iabbrev <buffer> buf <lt>buffer>
iabbrev <buffer> cr <lt>CR>
iabbrev <buffer> cv <lt>C-V>
iabbrev <buffer> esc <lt>Esc>
iabbrev <buffer> lead <lt>Leader>
iabbrev <buffer> llead <lt>Localleader>
iabbrev <buffer> noh :noh<lt>CR>
iabbrev <buffer> sil <lt>silent>
iabbrev <buffer> sp <lt>Space>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <buffer> <Leader>a@ i@='<Esc>A'<lt>CR><Esc>jB
nnoremap <buffer> <Leader>d@ df'$F'DjB

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" autopairs
let b:AutoPairs={}
