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

" Change/delete/yank text from current position to the end of the next pair of matching parentheses/brackets
nnoremap <leader>c( vf(%c
nnoremap <leader>d( vf(%d
nnoremap <leader>y( vf(%y
nnoremap <leader>c[ vf[%c
nnoremap <leader>d[ vf[%d
nnoremap <leader>y[ vf[%y

" Delete text from current position to the next pair of matching parentheses, preserving the content inside
nnoremap <leader>D( mmf(lyi(`mvf(%d"0p

""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete buffer and move to next buffer
command! Bdn bd | bn

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
set wildignore=*~,*.class,*.jar,*.map,*.pyc,*dist*,*node_modules*

""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete last plain/surrounded item in a comma/plus list
nnoremap <leader>d, de2h2xb
nnoremap <leader>D, xdwx2h2xB
nnoremap <leader>d+ de3h3xb
nnoremap <leader>D+ xdwx3h3xB

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
nnoremap <silent> c~ v/\u<CR>hd:noh<CR>i
nnoremap <silent> d~ v/\u<CR>hd:noh<CR>
nnoremap <silent> y~ v/\u<CR>hy:noh<CR>

" Toggle case of current letter and enter insertion mode
nnoremap <leader>s~ ~hi

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add two new lines above/below current line
nnoremap 2O O<esc>O
nnoremap 2o o<esc>o

" Wrap the next word/Word/function in parentheses
nnoremap <leader>(w a(<esc>ea)<esc>
nnoremap <leader>(W a(<esc>Ea)<esc>
nnoremap <leader>(( a(<esc>f(%a)<esc>

" Double up backslashes in a line
nnoremap <silent> <leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add semicolon to end of line
nnoremap <leader>a; A;<esc>

" Yank line, comment it out, then paste it below
nnoremap <leader>ycp yygccp

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable backspace
set backspace=indent,eol,start

" Move between lines
set whichwrap=b,s

" Keep lines between the cursor and top/bottom of the screen
set scrolloff=7

" Move to next/previous character that matches the regex \w after the next/previous character that matches the regex \W
nnoremap <silent> <leader>ww /\W<CR>/\w<CR>:noh<CR>
nnoremap <silent> <leader>bb ?\w<CR>?\W<CR>/\w<CR>:noh<CR>

" Move to the line after the next/previous blank line
nnoremap <silent> <leader>] /^\n<CR>:noh<CR>j^
nnoremap <silent> <leader>[ ?^\n<CR>n:noh<CR>j^

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <esc>o
inoremap <silent> <S-Enter> <esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Numbers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Increment/decrement next/previous number
nnoremap <silent> <leader>n<C-A> l/\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>n<C-X> l/\d<CR><C-X>:noh<CR>
nnoremap <silent> <leader>N<C-A> h?\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>N<C-X> h?\d<CR><C-X>:noh<CR>

" Paste line, increment next number, and yank that line
nnoremap <silent> <leader>p<C-A> p/\d<CR><C-A>:noh<CR>yy

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dep de"0P
nnoremap <leader>dEp dE"0P
nnoremap <leader>dwp dw"0P
nnoremap <leader>dWp dW"0P
nnoremap <leader>ddp dd"0Pj

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

" Insert/append pairs of characters and end in normal/insert mode
nnoremap <leader>i' i''<esc>
nnoremap <leader>I' i''<esc>i
nnoremap <leader>i" i""<esc>
nnoremap <leader>I" i""<esc>i
nnoremap <leader>i( i()<esc>
nnoremap <leader>I( i()<esc>i
nnoremap <leader>i[ i[]<esc>
nnoremap <leader>I[ i[]<esc>i
nnoremap <leader>i{ i{<CR>}<esc>
nnoremap <leader>I{ i{<CR>}<esc>O
nnoremap <leader>a' a''<esc>h
nnoremap <leader>A' a''<esc>i
nnoremap <leader>a" a""<esc>h
nnoremap <leader>A" a""<esc>i
nnoremap <leader>a( a()<esc>h
nnoremap <leader>A( a()<esc>i
nnoremap <leader>a[ a[]<esc>h
nnoremap <leader>A[ a[]<esc>i
nnoremap <leader>a{ a{<CR>}<esc>
nnoremap <leader>A{ a{<CR>}<esc>O

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
set statusline=%f\ %y\ %m%=%l:%c

""""""""""""""""""""""""""""""""""""""""""""""""""
" Swapping
""""""""""""""""""""""""""""""""""""""""""""""""""

" Swap line with the one above/below
nnoremap <leader>k @='ddkP'<CR>
nnoremap <leader>j @='ddp'<CR>

" Swap two characters forwards/backwards
nnoremap <leader>x xp
nnoremap <leader>X xP

" Swap two normal or single/double quoted items in a comma/plus list forwards/backwards
nnoremap <leader>s,s dt,wPldt,F,PW
nnoremap <leader>S,s dt,2bPldt,wP3b
nnoremap <silent> <leader>s,' v/[^\\]'<CR>ldwPlvnld2NhPW:noh<CR>
nnoremap <silent> <leader>S,' v/[^\\]'<CR>ld2NplvnldwP4Nl:noh<CR>
nnoremap <silent> <leader>s," v/[^\\]"<CR>ldwPlvnld2NhPW:noh<CR>
nnoremap <silent> <leader>S," v/[^\\]"<CR>ld2NplvnldwP4Nl:noh<CR>
nnoremap <leader>s+s dE2WPldEF+hP2W
nnoremap <leader>S+s dE2BPldEwlp3B
nnoremap <silent> <leader>s+' v/[^\\]'<CR>ld2WPlvnld2N2hP2W:noh<CR>
nnoremap <silent> <leader>S+' v/[^\\]'<CR>ld2Nplvnldwlp4Nl:noh<CR>
nnoremap <silent> <leader>s+" v/[^\\]"<CR>ld2WPlvnld2N2hP2W:noh<CR>
nnoremap <silent> <leader>S+" v/[^\\]"<CR>ld2Nplvnldwlp4Nl:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Move to start of next/previous single/double quote string or variable
nnoremap <silent> <leader>w' /\('.\{-}[^\\]'\\|\S\+\)\(\s+\s\\|\n\)<CR>:noh<CR>
nnoremap <silent> <leader>b' ?\('.\{-}[^\\]'\\|\S\+\)\(\s+\s\\|\n\)<CR>:noh<CR>
nnoremap <silent> <leader>W' /'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <leader>B' ?'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <leader>w" /\(".\{-}[^\\]"\\|\S\+\)\(\s+\s\\|\n\)<CR>:noh<CR>
nnoremap <silent> <leader>b" ?\(".\{-}[^\\]"\\|\S\+\)\(\s+\s\\|\n\)<CR>:noh<CR>
nnoremap <silent> <leader>W" /".\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <leader>B" ?".\{-}[^\\]"<CR>:noh<CR>

" Insert plus and nothing or single/double quote string
nnoremap <leader>a+a a<space>+<space>
nnoremap <leader>a+' a<space>+<space>''<esc>i
nnoremap <leader>a+" a<space>+<space>""<esc>i

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
