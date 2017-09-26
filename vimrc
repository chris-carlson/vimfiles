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
nnoremap <Leader>c[ vf[%c
nnoremap <Leader>d[ vf[%d
nnoremap <Leader>y[ vf[%y
nnoremap <Leader>c{ vf{%c
nnoremap <Leader>d{ vf{%d
nnoremap <Leader>y{ vf{%y

" Delete text from current position to the next pair of matching parentheses, preserving the content inside
nnoremap <Leader>D( dt(di(hPl2xB

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
set wildignore=*~,*.class,*.jar,*.map,*.pyc,*.xlsx,*\\dist\\*,*\\node_modules\\*,*\\__pycache__\\*,*\\build\\*,*\\bin\\*

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
" File Information
""""""""""""""""""""""""""""""""""""""""""""""""""

" Encode files in UTF-8
set encoding=utf-8

" Set line endings to Unix for new files
set fileformats=unix,dos

command! Unix set ff=unix | w

""""""""""""""""""""""""""""""""""""""""""""""""""
" File Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/highlight/yank entire file
nnoremap <Leader>cg ggcG
nnoremap <Leader>dg ggdG
nnoremap <Leader>vg ggVG
nnoremap <Leader>yg ggyG

" Change/delete/highlight/yank from current line until end of file
nnoremap <Leader>cG 0cG
nnoremap <Leader>dG 0dG
nnoremap <Leader>vG 0VG
nnoremap <Leader>yG 0yG

" Change/delete/highlight/yank from current line until next blank line
nnoremap <Leader>cn 0c/^\n<CR>:noh<CR>
nnoremap <Leader>dn 0d/^\n<CR>dd:noh<CR>
nnoremap <Leader>vn 0V/^\n<CR>k
nnoremap <Leader>yn 0y/^\n<CR>:noh<CR>

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

" Indent curly brace block
nnoremap <Leader>>{ v$%><lt><lt>$%<lt><lt>
nnoremap <Leader>>} v%><lt><lt>$%<lt><lt>

" Indent colon block
nnoremap <silent> <Leader>>: v?<C-V>:<CR>><lt><lt>:noh<CR>

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
nnoremap <silent> c~ v/\u<CR>hd:noh<CR>i
nnoremap <silent> d~ v/\u<CR>hd:noh<CR>
nnoremap <silent> y~ v/\u<CR>hy:noh<CR>

" Toggle case of current letter and enter insertion mode
nnoremap <Leader>s~ ~hi

" Delete until next capital letter and make it lowercase
nnoremap <Leader>S~ v/\u<CR>:noh<CR>hd~h

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add two new lines above/below current line
nnoremap 2O O<Esc>O
nnoremap 2o o<Esc>o

" Add two new lines and go into insert mode on the first
nnoremap <Leader>oO o<Esc>O

" Wrap the selection in parentheses
vnoremap <Leader>( di()<Esc>P
nnoremap <Leader>($ v$hda()<Esc>P

" Select to the end of the line
vnoremap $ $h

" Double up backslashes in a line
nnoremap <silent> <Leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add semicolon to end of line
nnoremap <Leader>; A;<Esc>

" Open line with semicolon
nnoremap <Leader>o; o;<Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""
" List
""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert/append to a comma/plus separated list
nnoremap <Leader>i, i,<Space><Esc>hi
nnoremap <Leader>i+ i<Space>+<Space><Esc>2hi
nnoremap <Leader>a, a,<Space>
nnoremap <Leader>a+ a<Space>+<Space>

" Delete item from comma/plus separated list, not yanking the comma/plus
nnoremap <Leader>d, /\(\((\\|\[\\|{\\|<\).*\()\\|\]\\|}\\|>\)\)*\zs\(,\\|)\\|\]\\|}\\|>\)<CR>:noh<CR>

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
nnoremap <silent> <Leader>ww /\(\W\+\\|\n\\|\%^\)\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>bb ?\(\W\+\\|\n\\|\%^\)\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w_ f_l
nnoremap <silent> <Leader>b_ F_l
nnoremap <silent> <Leader>w. f.l
nnoremap <silent> <Leader>b. F.l
nnoremap <silent> <Leader>w( f(l
nnoremap <silent> <Leader>b( F(l
nnoremap <silent> <Leader>w[ f[l
nnoremap <silent> <Leader>b[ F[l
nnoremap <silent> <Leader>w< f<l
nnoremap <silent> <Leader>b< F<l
nnoremap <silent> <Leader>w{ f{l
nnoremap <silent> <Leader>b{ F{l
nnoremap <silent> <Leader>w2{ /\{\{\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b2{ ?\{\{\zs\w<CR>:noh<CR>

" Move to next/previous capital letter
nnoremap <silent> <Leader>w~ /\u<CR>:noh<CR>
nnoremap <silent> <Leader>b~ ?\u<CR>:noh<CR>

" Move to start of next/previous single/double quote string
nnoremap <silent> <Leader>w' /'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>b' ?'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>w" /".\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <Leader>b" ?".\{-}[^\\]"<CR>:noh<CR>

" Move to the line after/before the next/previous blank line
nnoremap <silent> ]] /\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> [[ ?\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> ][ /\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>
nnoremap <silent> [] ?\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>

" Move to the next/previous blank line
nnoremap <silent> ]n /^\n<CR>:noh<CR>
nnoremap <silent> [n ?^\n<CR>:noh<CR>

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <Esc>o
inoremap <silent> <S-Enter> <Esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Paste line, increment next number, and yank that line
nnoremap <silent> <Leader>p<C-A> yyp/\d<CR><C-A>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <Leader>dep de"0P
nnoremap <Leader>dEp dE"0P
nnoremap <Leader>dwp dw"0P
nnoremap <Leader>dWp dW"0P
nnoremap <Leader>ddp dd"0Pj

" Add a new line below/above then paste below/above
nnoremap <Leader>op o<Esc>p
nnoremap <Leader>OP O<Esc>P

" Delete line then paste below
nnoremap <Leader>dp pkdd

" Paste at the start/end of a line
nnoremap <Leader>ip I<Esc>p
nnoremap <Leader>ap A<Esc>p

" Paste to a comma/plus separated list
nnoremap <Leader>p, a,<Space><Esc>p
nnoremap <Leader>p+ a<Space>+<Space><Esc>p

" External paste
nnoremap <Leader>gp "+gp
nnoremap <Leader>gP "+gP

" Paste from yank buffer
nnoremap <Leader>yp "0p
nnoremap <Leader>yP "0P

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" airline
let g:airline_theme='light'
let g:airline_section_y='[%{&fileformat}]'
let g:airline_section_z='%l:%c'

" ctrlp
let g:ctrlp_working_path_mode='a'
let g:ctrlp_by_filename=1
let g:ctrlp_show_hidden=1
let g:ctrlp_max_files=100
let g:ctrlp_open_new_file='h'
let g:ctrlp_open_multiple_files='ir'

" nerdtree
nnoremap <C-N> :NERDTree<CR>
let NERDTreeIgnore=['\~$', 'class$', 'jar$', 'map$', 'pyc$', 'dist$[[dir]]', 'node_modules$[[dir]]', '__pycache__$[[dir]]', 'build$[[dir]]', 'bin$[[dir]]']

" pathogen
call pathogen#infect()

" ultisnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-x>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

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
nnoremap <silent> <F2> :set hlsearch! hlsearch?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""
" Swapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Swap line with the one above/below
nnoremap <silent> <Leader>k @='ddkP'<CR>
nnoremap <silent> <Leader>j @='ddp'<CR>

" Swap two characters forwards/backwards
nnoremap <Leader>x xp
nnoremap <Leader>X xhP

" Swap two items in a list forwards/backwards
nnoremap <silent> <Leader>ss v/\(,\\|\s+\s\)<CR>hd/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\)<CR>P/\(\w\\|'\\|"\)<CR>:noh<CR>
nnoremap <silent> <Leader>Ss v/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\)<CR>hd/\s<CR>p?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Append plus and nothing or single/double quote string
nnoremap <Leader>++ a<Space>+<Space>
nnoremap <Leader>+' a<Space>+<Space>''<Esc>i
nnoremap <Leader>+" a<Space>+<Space>""<Esc>i

" Append variable in tick string
nnoremap <Leader>${ a${}<Esc>i

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
vnoremap <Leader>gy "+y
