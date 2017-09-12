""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups
""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off before writing file
set nobackup

" Turn backup off when writing file
set nowritebackup

" Turn swap files off
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""
" Braces
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/yank text from current position to the end of the next pair of matching characters
nnoremap <leader>c( vf(%c
nnoremap <leader>d( vf(%d
nnoremap <leader>y( vf(%y
nnoremap <leader>c[ vf[%c
nnoremap <leader>d[ vf[%d
nnoremap <leader>y[ vf[%y
nnoremap <leader>c{ vf{%c
nnoremap <leader>d{ vf{%d
nnoremap <leader>y{ vf{%y

" Delete text from current position to the next pair of matching parentheses, preserving the content inside
nnoremap <leader>D( dt(di(hPl2xB

""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow for capital letters in buffer commands
command! Bn bn
command! BN bn
command! Bp bp
command! BP bp
command! Bd bd
command! BD bd

" Delete buffer and move to next buffer
command! Bdn bd | bn

" Save buffer and move to previous buffer
command! Wp w | bp

" Save buffer and move to next buffer
command! Wn w | bn
"
" Save buffer, close it, and move to next buffer
command! Wd w | bd | bn

""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Set color scheme
colorscheme desert

" Set background color
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""
" Command line
""""""""""""""""""""""""""""""""""""""""""""""""""

" Show partial command as it's being entered
set showcmd

" Set command-line height
set cmdheight=1

" Autocomplete commands
set wildmenu

" Ignore compiled files in autocomplete
set wildignore=*~,*.class,*.jar,*.map,*.pyc,*\\dist\\*,*\\node_modules\\*,*\\__pycache__\\*,*\\build\\*,*\\bin\\*

""""""""""""""""""""""""""""""""""""""""""""""""""
" File Commands
""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow for capital letters when saving and/or closing the file
command! W w
command! Q q
command! Wq wq
command! WQ wq

" Allow for capital letters when opening a blank file
command! Enew enew

" Allow for capital letters when clearing search highlighting
command! Noh noh

" Turn off last search highlight when loading source
autocmd SourcePre * :let @/ = ""

""""""""""""""""""""""""""""""""""""""""""""""""""
" File Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/highlight/yank entire file
nnoremap <leader>cg ggcG
nnoremap <leader>dg ggdG
nnoremap <leader>vg ggVG
nnoremap <leader>yg ggyG

" Change/delete/highlight/yank from current line until end of file
nnoremap <leader>cG 0cG
nnoremap <leader>dG 0dG
nnoremap <leader>vG 0VG
nnoremap <leader>yG 0yG

" Change/delete/highlight/yank from current line until next blank line
nnoremap <leader>cn 0c/^\n<CR>:noh<CR>
nnoremap <leader>dn 0d/^\n<CR>:noh<CR>dd
nnoremap <leader>vn 0V/^\n<CR>:noh<CR>k
nnoremap <leader>yn 0y/^\n<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

" Number of visual spaces when reading a file
set tabstop=4

" Number of visual spaces when editing a file
set softtabstop=4

" Number of spaces when indenting a line
set shiftwidth=4

" Convert tabs to spaces
set expandtab

" Insert/delete spaces when tabbing
set smarttab

" Automatically indent files
set autoindent

" Indent a new line
set smartindent

" Load filetype-specific indent files
filetype plugin indent on

" Indent curly brace block
nnoremap <leader>>{ v$%><lt><lt>$%<lt><lt>
nnoremap <leader>>} v%><lt><lt>$%<lt><lt>

" Indent colon block
nnoremap <silent> <leader>>: v?<C-V>:<CR>><lt><lt>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Leaders
""""""""""""""""""""""""""""""""""""""""""""""""""

" Set leader key for filetype mappings
let mapleader = '\'
let maplocalleader = '_'

""""""""""""""""""""""""""""""""""""""""""""""""""
" Letter case
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/yank until next capital letter
nnoremap <silent> c~ v/\u<CR>:noh<CR>hdi
nnoremap <silent> d~ v/\u<CR>:noh<CR>hd
nnoremap <silent> y~ v/\u<CR>:noh<CR>hy

" Toggle case of current letter and enter insertion mode
nnoremap <leader>s~ ~hi

" Delete until next capital letter and make it lowercase
nnoremap <leader>S~ v/\u<CR>:noh<CR>hd~h

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add two new lines above/below current line
nnoremap 2O O<esc>O
nnoremap 2o o<esc>o

" Add two new lines and go into insert mode on the first
nnoremap <leader>oO o<esc>O

" Wrap the next word/Word/function in parentheses
nnoremap <leader>(e i(<esc>ea)<esc>%i
nnoremap <leader>(E i(<esc>Ea)<esc>%i
nnoremap <leader>(( i(<esc>f(%a)<esc>%i
nnoremap <leader>($ i(<esc>$a)<esc>%i

" Double up backslashes in a line
nnoremap <silent> <leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add semicolon to end of line
nnoremap <leader>; A;<esc>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable backspace
set backspace=indent,eol,start

" Move between lines
set whichwrap=b,s

" Keep lines between the cursor and top/bottom of the screen
set scrolloff=7

" Move to next/previous word after the next/previous given character
nnoremap <silent> <leader>ww /\(\W\+\\|\n\\|\%^\)\zs\w<CR>:noh<CR>
nnoremap <silent> <leader>bb ?\(\W\+\\|\n\\|\%^\)\zs\w<CR>:noh<CR>
nnoremap <silent> <leader>w_ f_l
nnoremap <silent> <leader>b_ F_l
nnoremap <silent> <leader>w. f.l
nnoremap <silent> <leader>b. F.l
nnoremap <silent> <leader>w( f(l
nnoremap <silent> <leader>b( F(l
nnoremap <silent> <leader>w[ f[l
nnoremap <silent> <leader>b[ F[l
nnoremap <silent> <leader>w< f<l
nnoremap <silent> <leader>b< F<l
nnoremap <silent> <leader>w{ f{l
nnoremap <silent> <leader>b{ F{l
nnoremap <silent> <leader>w2{ /\{\{\zs\w<CR>:noh<CR>
nnoremap <silent> <leader>b2{ ?\{\{\zs\w<CR>:noh<CR>

" Move to next/previous capital letter
nnoremap <silent> <leader>w~ /\u<CR>:noh<CR>

" Move to start of next/previous single/double quote string
nnoremap <silent> <leader>w' /'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <leader>b' ?'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <leader>w" /".\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <leader>b" ?".\{-}[^\\]"<CR>:noh<CR>

" Move to the line after/before the next/previous blank line
nnoremap <silent> ]] /\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> [[ ?\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> ][ /\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>
nnoremap <silent> [] ?\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>

" Move to the next/previous blank line
nnoremap <silent> ]n /^\n<CR>:noh<CR>
nnoremap <silent> [n ?^\n<CR>:noh<CR>

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <esc>o
inoremap <silent> <S-Enter> <esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Increment/decrement next/previous number
nnoremap <silent> <leader><C-A>n /\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader><C-X>n /\d<CR><C-X>:noh<CR>
nnoremap <silent> <leader><C-A>N ?\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader><C-X>N ?\d<CR><C-X>:noh<CR>

" Paste line, increment next number, and yank that line
nnoremap <silent> <leader>p<C-A> yyp/\d<CR><C-A>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dep de"0P
nnoremap <leader>dEp dE"0P
nnoremap <leader>dwp dw"0P
nnoremap <leader>dWp dW"0P
nnoremap <leader>ddp dd"0Pj

" Add a new line below/above then paste below/above
nnoremap <leader>op o<esc>p
nnoremap <leader>OP O<esc>P

" Delete line then paste below
nnoremap <leader>dp pkdd

" Paste at the start/end of a line
nnoremap <leader>ip I<esc>p
nnoremap <leader>ap A<esc>p

" Paste to a comma/plus separated list
nnoremap <leader>p, a,<space><esc>p
nnoremap <leader>p+ a<space>+<space><esc>p

" External paste
nnoremap <leader>gp "+gp
nnoremap <leader>gP "+gP

" Paste from yank buffer
nnoremap <leader>yp "0p
nnoremap <leader>yP "0P

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 1000
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'ir'

" Pathogen
call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Ignore case
set ignorecase

" Allow for the special character to be changed
set magic

" Use very magic when searching
nnoremap / /\v
nnoremap ? ?\v
vnoremap / /\v
vnoremap ? ?\v
cnoremap s/ s/\v

" Toggle search highlight
nnoremap <silent> <F2> :set hlsearch! hlsearch?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=%f\ %y\ %m%=%l:%c

""""""""""""""""""""""""""""""""""""""""""""""""""
" Swapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Swap line with the one above/below
nnoremap <leader>k @='ddkP'<CR>
nnoremap <leader>j @='ddp'<CR>

" Swap two characters forwards/backwards
nnoremap <leader>x xp
nnoremap <leader>X xhP

" Swap two items in a list forwards/backwards
nnoremap <silent> <leader>ss v/\(,\\|\s+\s\)<CR>hd/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\)<CR>P/\(\w\\|'\\|"\)<CR>:noh<CR>
nnoremap <silent> <leader>Ss v/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\)<CR>hd/\s<CR>p?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Append plus and nothing or single/double quote string
nnoremap <leader>++ a<space>+<space>
nnoremap <leader>+' a<space>+<space>''<esc>i
nnoremap <leader>+" a<space>+<space>""<esc>i

" Append variable in tick string
nnoremap <leader>${ a${}<esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
""""""""""""""""""""""""""""""""""""""""""""""""""

" Show current cursor position
set ruler

" Highlight the current line
set cursorline

" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Redraw the screen only when needed
set lazyredraw

" Highlight matching characters
set showmatch

" Reload file when it is externally changed
set autoread

" Wrap lines
set wrap

" Enable the mouse
set mouse=a

" Stop the window from resizing when opening a new tab
set guioptions=gmrtT

""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""

" Edit vimrc
command! Erc e $MYVIMRC

" Reload vimrc
command! Lrc source $MYVIMRC

""""""""""""""""""""""""""""""""""""""""""""""""""
" Yanking
""""""""""""""""""""""""""""""""""""""""""""""""""

" Yank to end of line
nnoremap Y y$

" Yank to clipboard
nnoremap <leader>gye "+ye
nnoremap <leader>gyE "+yE
nnoremap <leader>gyw "+yw
nnoremap <leader>gyW "+yW
nnoremap <leader>gyy "+yy
nnoremap <leader>gY "+y$
