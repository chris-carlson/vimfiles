""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off last search highlight when loading source
autocmd SourcePre * :let @/ = ""

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

" Change text from current position to the end of the next pair of matching parentheses/brackets/braces
nnoremap <leader>c( vf(%c
nnoremap <leader>c[ vf[%c
nnoremap <leader>c{ vf{%c

" Delete text from current position to the end of the next pair of matching parentheses/brackets/braces
nnoremap <leader>d( vf(%d
nnoremap <leader>d[ vf[%d
nnoremap <leader>d{ vf{%d

" Yank text from current position to the end of the next pair of matching parentheses/brackets/braces
nnoremap <leader>y( vf(%y
nnoremap <leader>y[ vf[%y
nnoremap <leader>y{ vf{%y

""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete buffer and move to next buffer
command! Bdn bd | bn

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
set wildignore=*~,*.class,*.jar,*.map,*.pyc,*dist*,*node_modules*

""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete last plain/surrounded item in a comma/plus list
nnoremap <leader>d, de2h2xb
nnoremap <leader>D, xdwx2h2xB
nnoremap <leader>d+ de3h3xb
nnoremap <leader>D+ xdwx3h3xB

" Delete entire file
nnoremap <leader>dg ggdG

""""""""""""""""""""""""""""""""""""""""""""""""""
" Files
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
let localmapleader = '_'

""""""""""""""""""""""""""""""""""""""""""""""""""
" Letter case
""""""""""""""""""""""""""""""""""""""""""""""""""

" Change/delete/yank until next capital letter
nnoremap <silent> c~ v/\u<CR>hd:noh<CR>i
nnoremap <silent> d~ v/\u<CR>hd:noh<CR>
nnoremap <silent> y~ v/\u<CR>hy:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add two new lines above/below current line
nnoremap 2O O<esc>O
nnoremap 2o o<esc>o

" Wrap the next Word in parentheses
nnoremap <leader>a( a(<esc>Ea)<esc>

" Double up backslashes in a line
nnoremap <silent> <leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add semicolon to end of line
nnoremap <leader>a; A;<esc>

" Increment/decrement next/previous number
nnoremap <silent> <leader>/<C-A> l/\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>/<C-X> l/\d<CR><C-X>:noh<CR>
nnoremap <silent> <leader>?<C-A> h?\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>?<C-X> h?\d<CR><C-X>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable backspace
set backspace=indent,eol,start

" Move between lines
set whichwrap=b,s

" Keep lines between the cursor and top/bottom of the screen
set scrolloff=7

" Move onto wrapped lines
nnoremap j gj
nnoremap k gk

" Move to next/previous word that matches the regex \w
nnoremap <silent> w /\W<CR>/\w<CR>:noh<CR>
nnoremap <silent> b ?\w<CR>?\W<CR>/\w<CR>:noh<CR>

" Move to the line after the next/previous blank line
nnoremap <silent> <leader>] /^\n<CR>:noh<CR>j
nnoremap <silent> <leader>[ ?^\n<CR>n:noh<CR>j

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <esc>o
inoremap <silent> <S-Enter> <esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dep de"0P
nnoremap <leader>dEp dE"0P
nnoremap <leader>dwp dw"0P
nnoremap <leader>dWp dW"0P
nnoremap <leader>Dp dd"0Pj

" Add a new line below/above then paste line below/above
nnoremap <leader>op o<esc>p
nnoremap <leader>OP O<esc>P

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
" Pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""

" Start Pathogen
call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pairs
""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert pairs of characters
nnoremap <leader>i' i''<esc>i
nnoremap <leader>i" i""<esc>i
nnoremap <leader>i( i()<esc>i
nnoremap <leader>i[ i[]<esc>i
nnoremap <leader>i{ i{}<esc>i

" Append pairs of characters
nnoremap <leader>a' a''<esc>i
nnoremap <leader>a" a""<esc>i
nnoremap <leader>a( a()<esc>i
nnoremap <leader>a[ a[]<esc>i
nnoremap <leader>a{ a{}<esc>i

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

""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=%f\ %y\ %m%=Col:\ %c,\ Line:\ %l/%L

""""""""""""""""""""""""""""""""""""""""""""""""""
" Swapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Swap line with the one above/below
nnoremap <leader>k @='ddkP'<CR>
nnoremap <leader>j @='ddp'<CR>

" Swap two characters
nnoremap <leader>x xp
nnoremap <leader>X xP

" Swap two items in a plain comma list forwards/backwards
nnoremap <leader>s,f dWWPB
nnoremap <leader>s,m dWWPB
nnoremap <leader>s,l bdt,epB
nnoremap <leader>s,f dW2bP2b
nnoremap <leader>s,m dW2bP2b
nnoremap <leader>s,l bde2bPB

" Swap two items in a surrounded comma list forwards/backwards
nnoremap <leader>s,F dWWPB
nnoremap <leader>s,M dWWPB
nnoremap <leader>s,L bldt,3wpB
nnoremap <leader>s,F dW2bhP2bh
nnoremap <leader>s,M dW2bhP2bh
nnoremap <leader>s,L bd3w3bPB

" Swap two items in a plain plus list forwards/backwards
nnoremap <leader>s+f d2w2wP2b
nnoremap <leader>s+m d2w2wP2b
nnoremap <leader>s+l bhd2e2epb
nnoremap <leader>s+f d2w2bP2b
nnoremap <leader>s+m d2w2bP2b
nnoremap <leader>s+l bhd2e2bhPb

" Swap two items in a surrounded plus list forwards/backwards
nnoremap <leader>s+F d2W2WP2B
nnoremap <leader>s+M d2W2WP2B
nnoremap <leader>s+L bhd2E4wpB
nnoremap <leader>s+F d2W3bhP3bh
nnoremap <leader>s+M d2W3bhP3bh
nnoremap <leader>s+L b2hd4w2B2hPB

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

" Yank entire file
nnoremap <leader>yg ggyG
