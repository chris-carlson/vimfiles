""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

iabbrev <buffer> ca catch
iabbrev <buffer> cl class
iabbrev <buffer> imp import
iabbrev <buffer> pri private
iabbrev <buffer> pro protected
iabbrev <buffer> psvm public static void main(String[] args)
iabbrev <buffer> pub public
iabbrev <buffer> ret return
iabbrev <buffer> str String
iabbrev <buffer> syst System.out.println
iabbrev <buffer> th this
iabbrev <buffer> thr throw
iabbrev <buffer> vo void

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
nnoremap <silent> <buffer> [c ?^\(private\\|protected\\|public\)<space>class<space>\w\+<space>\(\(\w\+<space>\)\{2\}\)\?{<CR>:noh<CR>
nnoremap <silent> <buffer> ]c /^\(private\\|protected\\|public\)<space>class<space>\w\+<space>\(\(\w\+<space>\)\{2\}\)\?{<CR>:noh<CR>

" Go to previous/next constructor
nnoremap <silent> <buffer> [C ?\(private\\|protected\\|public\)<space>\w\+(.*)<space>{<CR>:noh<CR>
nnoremap <silent> <buffer> ]C /\(private\\|protected\\|public\)<space>\w\+(.*)<space>{<CR>:noh<CR>

" Go to previous/next method definition
nnoremap <silent> <buffer> [m ?\(private\\|protected\\|public\)<space>\w\+<space>\w\+(.*)<space>{<CR>:noh<CR>
nnoremap <silent> <buffer> ]m /\(private\\|protected\\|public\)<space>\w\+<space>\w\+(.*)<space>{<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a parameter to the method
nnoremap <buffer> <localleader>ipp ^f(a
nnoremap <buffer> <localleader>app ^f)i,<space>
