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
nnoremap <Leader>c( vf(%c
nnoremap <Leader>d( vf(%d
nnoremap <Leader>y( vf(%y
nnoremap <Leader>v( vf(%
nnoremap <Leader>c[ vf[%c
nnoremap <Leader>d[ vf[%d
nnoremap <Leader>y[ vf[%y
nnoremap <Leader>v[ vf[%
nnoremap <Leader>c{ V^f{%c
nnoremap <Leader>d{ V^f{%d
nnoremap <Leader>y{ V^f{%y^f{%
nnoremap <Leader>v{ V^f{%
nnoremap <Leader>c<lt> vf<lt>%c
nnoremap <Leader>d<lt> vf<lt>%d
nnoremap <Leader>y<lt> vf<lt>%y
nnoremap <Leader>v<lt> vf<lt>%

" Delete text from current position to the next pair of matching characters, preserving the content inside
nnoremap <Leader>D( dt(di(hPl2xB
nnoremap <Leader>D[ dt[di[hPl2xB
nnoremap <Leader>D{ dt{di{hPl2xB
nnoremap <Leader>D<lt> dt<lt>di<lt>hPl2xB

" Highlight through next pair of matching characters
vnoremap <Leader>( f(%
vnoremap <Leader>[ f[%
vnoremap <Leader>{ f{%
vnoremap <Leader><lt> f<lt>%

" Match angle bracket pairs
set matchpairs+=<:>

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
set wildignore=*~,*.class,*.jar,*.map,*.pyc,*.xlsx,*\\dist\\*,*\\node_modules\\*,*\\build\\*,*\\target\\*,*\\.idea\\*

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

" Set working directory to that of the currently open file
command! Cd cd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""
" File Information
""""""""""""""""""""""""""""""""""""""""""""""""""

" Encode files in UTF-8
set encoding=utf-8

" Set line endings to Unix for new files
autocmd BufWinEnter,BufRead * setlocal fileformats=unix,dos

command! Unix set fileformat=unix | w

""""""""""""""""""""""""""""""""""""""""""""""""""
" File Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/highlight/yank entire file
nnoremap <Leader>cg ggcG
nnoremap <Leader>dg ggdG
nnoremap <Leader>vg ggVG
nnoremap <Leader>yg ggyG

" Change/delete/highlight/yank from current line until/through next blank line
nnoremap <Leader>cn V/\(\n\{2}\\|\%$\)<CR>c<Esc>:noh<CR>S
nnoremap <Leader>dn V/\(\n\{2}\\|\%$\)<CR>d:noh<CR>
nnoremap <Leader>Dn V/\(\n\{2}\\|\%$\)<CR>d"_dd:noh<CR>
nnoremap <Leader>vn V/\(\n\{2}\\|\%$\)<CR>
nnoremap <Leader>yn V/\(\n\{2}\\|\%$\)<CR>yn^:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

set mouse=

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

" Indentation
set cindent

" Load filetype-specific indent files
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""
" Insertion
""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert characters in a list/path/concatenation
nnoremap <Leader>i, i,<Space><Esc>hi
nnoremap <Leader>i. i.<Esc>i
nnoremap <Leader>i_ i_<Esc>i
nnoremap <Leader>ip i\\<Esc>hi
nnoremap <Leader>i+ i<Space>+<Space><Esc>2hi
nnoremap <Leader>i' i''<Space>+<Space><Esc>3hi
nnoremap <Leader>i" i""<Space>+<Space><Esc>3hi

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
nnoremap <silent> <Leader>c~ v/\u<CR>hd:noh<CR>i
nnoremap <silent> <Leader>d~ v/\u<CR>hd:noh<CR>
nnoremap <silent> <Leader>y~ v/\u<CR>hy:noh<CR>

" Toggle case of current letter and enter insertion mode
nnoremap <Leader>~i ~hi

" Delete until next capital letter and make it lowercase
nnoremap <Leader>~d v/\u<CR>hd~h:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't add comment on new line
autocmd BufWinEnter,BufRead * setlocal formatoptions-=cro

" Add two new lines below/above current line
nnoremap <Leader>oo o<Esc>o
nnoremap <Leader>OO O<Esc>O

" Add two new lines and go into insert mode on the first
nnoremap <Leader>go o<Esc>O

" Select to the end of the line
vnoremap $ $h

" Delete/replace selection without yanking it
vnoremap <Leader>d "_d
vnoremap <Leader>r "_dP

" Add semicolon to end of line
nnoremap <Leader>; A;<Esc>

" Clear line
nnoremap <Leader>S S<Esc>

" Delete part of a file path
nnoremap <Leader>dp d2f\

" Double up backslashes in a line
nnoremap <silent> <Leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Move to start of next/previous wrapped line
nnoremap g+ gjg^
nnoremap g- gjg^

" Copy line up/down
nnoremap <Leader>yk yyp
nnoremap <Leader>yj yyP

" Invert boolean
nnoremap <Leader>sbt cetrue<Esc>
nnoremap <Leader>sbf cefalse<Esc>

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
nnoremap <Leader>w_ f_l
nnoremap <Leader>b_ hF_l
nnoremap <Leader>w. f.l
nnoremap <Leader>b. hF.l
nnoremap <Leader>w, f,l
nnoremap <Leader>b, hF,l
nnoremap <Leader>w( f(l
nnoremap <Leader>b( hF(l
nnoremap <Leader>w[ f[l
nnoremap <Leader>b[ hF[l
nnoremap <Leader>w{ f{l
nnoremap <Leader>b{ hF{l
nnoremap <Leader>w<lt> f<lt>l
nnoremap <Leader>b<lt> hF<lt>l
nnoremap <Leader>w> f>l
nnoremap <Leader>b> hF>l
nnoremap <Leader>w/ f\l
nnoremap <Leader>b/ hF\l
nnoremap <Leader>w: f:l
nnoremap <Leader>b: hF:l
nnoremap <Leader>w# f#l
nnoremap <Leader>b# hF#l
nnoremap <Leader>w- f-l
nnoremap <Leader>b- hF-l

" Move to next word after the last given character
nnoremap <Leader>e_ $F_l
nnoremap <Leader>e. $F.l
nnoremap <Leader>ep $?\(\\\\\\|\/\)\@<=.<CR>:noh<CR>

" Move to next/previous part of a file path
nnoremap <silent> <Leader>wp /\(\w:\(\\\(\\\)\=\\|\/\)\)\\|\(\(\(\\\(\\\)\=\\|\/\)\)\@<=[A-Za-z_.]\)<CR>:noh<CR>
nnoremap <silent> <Leader>bp ?\(\w:\(\\\(\\\)\=\\|\/\)\)\\|\(\(\(\\\(\\\)\=\\|\/\)\)\@<=[A-Za-z_.]\)<CR>:noh<CR>

" Move to next/previous capital letter
nnoremap <silent> <Leader>w~ /\u<CR>:noh<CR>
nnoremap <silent> <Leader>b~ ?\u<CR>:noh<CR>

" Move to start/end of next/previous single/double quote string
nnoremap <silent> <Leader>w' /'.\{-}\(\\\)\@<!'<CR>:noh<CR>l
nnoremap <silent> <Leader>b' h?'.\{-}\(\\\)\@<!'<CR>:noh<CR>l
nnoremap <silent> <Leader>w" /".\{-}\(\\\)\@<!"<CR>:noh<CR>l
nnoremap <silent> <Leader>b" h?".\{-}\(\\\)\@<!"<CR>:noh<CR>l

" Move to the line after/before the next/previous blank line
nnoremap <silent> <Leader>]] /\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>^
nnoremap <silent> <Leader>[[ ?\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>^

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <Esc>o
inoremap <silent> <S-Enter> <Esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Paste
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a new line below/above then paste below/above
nnoremap <Leader>op o<Esc>p
nnoremap <Leader>OP O<Esc>P

" Paste at the end of a line
nnoremap <Leader>ap A<Esc>p

" External paste
nnoremap <Leader>gp "+gp
nnoremap <Leader>gP "+gP

" Paste from yank buffer
nnoremap <Leader>yp "0p
nnoremap <Leader>yP "0P

" Yank and paste line, then increment number
nnoremap <silent> <Leader>p+ yyp<C-A>

" Paste external file path
nnoremap <Leader>pp' "+gphr'F"r'vf':s/\\/\\\\/g<CR>:noh<CR>$
nnoremap <Leader>pp" "+gphvF":s/\\/\\\\/g<CR>:noh<CR>$

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" airline
let g:airline_theme='light'
let g:airline_section_y='[%{&fileformat}]'
let g:airline_section_z='%l:%c'

" ctrlp
let g:ctrlp_working_path_mode='a'
let g:ctrlp_show_hidden=1
let g:ctrlp_max_files=100
let g:ctrlp_open_new_file='h'
let g:ctrlp_open_multiple_files='ir'
let g:ctrlp_lazy_update=1
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore='\v([\\]\.(git|hg|svn|vscode)$)|([\\]bundle$)|([\\].idea$)|([\\]target$)|([\\]out$)|([\\]\.settings$)|([\\]out-tsc$)'

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)

" matchit
runtime macros/matchit.vim

" nerdtree
nnoremap <C-N> :NERDTree<CR>
let NERDTreeIgnore=['\~$', 'class$', 'jar$', 'map$', 'pyc$', 'dist$[[dir]]', 'node_modules$[[dir]]', '__pycache__$[[dir]]', 'build$[[dir]]', 'bundle$[[dir]]', '.idea$[[dir]]', 'target$[[dir]]', 'out$[[dir]]']

" pathogen
call pathogen#infect()

" ultisnips
let g:UltiSnipsSnippetDirectories=["ultisnips"]

""""""""""""""""""""""""""""""""""""""""""""""""""
" Replace
""""""""""""""""""""""""""""""""""""""""""""""""""

" Replace word/line under cursor and paste yanked word/line
nnoremap <Leader>re "_deP
nnoremap <Leader>rE "_dEP
nnoremap <Leader>rw "_dwP
nnoremap <Leader>rW "_dWP
nnoremap <Leader>r$ "_d$p
nnoremap <Leader>rr "_ddP^

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

" Toggle search highlight
nnoremap <silent> <C-H> :set hlsearch! hlsearch?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Swapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Swap line with the one above/below
nnoremap <silent> <Leader>k kddp-
nnoremap <silent> <Leader>j ddp^

" Swap two characters forwards/backwards
nnoremap <Leader>x xp
nnoremap <Leader>X xhP

""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Append quoted string
nnoremap <Leader>a' i\'<Esc>la<Space>+<Space><Space>+<Space>'\''<Esc>6hi
nnoremap <Leader>a" i\"<Esc>la<Space>+<Space><Space>+<Space>"\""<Esc>6hi

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

" Yank selection to clipboard
vnoremap <Leader>y "+y
