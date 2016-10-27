""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off search highlighting when loading source
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

" Change text from current position to the end of the next pair of matching braces
nnoremap <leader>c( vf(%c
nnoremap <leader>c[ vf[%c
nnoremap <leader>c{ vf{%c

" Delete text from current position to the end of the next pair of matching braces
nnoremap <leader>d( vf(%d
nnoremap <leader>d[ vf[%d
nnoremap <leader>d{ vf{%d

" Yank text from current position to the end of the next pair of matching braces
nnoremap <leader>y( vf(%y
nnoremap <leader>y[ vf[%y
nnoremap <leader>y{ vf{%y

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
" Comments
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add/delete slash comment on the current line
nnoremap <leader>i/+ @='I//<space><C-V><esc>j^'<CR>
nnoremap <leader>i/- @='^3xj^'<CR>

" Add/delete pound comment on the current line
nnoremap <leader>i#+ @='I#<space><C-V><esc>j^'<CR>
nnoremap <leader>i#- @='^2xj^'<CR>

" Add/delete markup comment on the current line
nnoremap <leader>i!+ @='I<!--<C-V><esc>A--><C-V><esc>j^'<CR>
nnoremap <leader>i!- @='^4x$2h3xj^'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete last plain/surrounded item in a comma list
nnoremap <leader>d, de2h2xb
nnoremap <leader>D, xdwx2h2xB

" Delete last plain/surrounded item in a plus list
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
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add two new lines above/below current line
nnoremap 2O O<esc>O
nnoremap 2o o<esc>o

" Wrap the next Word in parentheses
nnoremap <leader>a( a(<esc>Ea)<esc>

" Double up backslashes in a line
nnoremap <silent> <leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add closing brace and indent one-line body
nnoremap <leader>}> jo}<esc>k>>

" Clear line, but don't delete it
nnoremap <leader>dc @='S<C-V><esc>j'<CR>

" Open new line with indentation deleted
nnoremap <leader>oc o<esc>S<esc>i

" Add semicolon to end of line
nnoremap <leader>a; A;<esc>

" Increment next/previous number
nnoremap <silent> <leader>/<C-A> l/\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>/<C-X> l/\d<CR><C-X>:noh<CR>
nnoremap <silent> <leader>?<C-A> h?\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>?<C-X> h?\d<CR><C-X>:noh<CR>

" Join next line to current line and delete space
nnoremap <leader>J @='Jx'<CR>

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

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <esc>o
inoremap <silent> <S-Enter> <esc>O

" Move to next/previous word that matches the regex \w+
nnoremap <silent> <leader>w /\W<CR>/\w<CR>:noh<CR>
nnoremap <silent> <leader>b ?\w<CR>?\W<CR>/\w<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dpy de"0P
nnoremap <leader>Dpy dd"0P

" Add a new line above/below, then paste line above/below
nnoremap <leader>op o<esc>p
nnoremap <leader>Op O<esc>p
nnoremap <leader>oP o<esc>P
nnoremap <leader>OP O<esc>P

" Add a new line above/below, then paste above/below with indentation
nnoremap <leader><tab>op o_<esc>p^x
nnoremap <leader><tab>Op O_<esc>p^x

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
nnoremap <leader>dp,f dWWPB
nnoremap <leader>dp,m dWWPB
nnoremap <leader>dp,l bdt,epB
nnoremap <leader>dP,f dW2bP2b
nnoremap <leader>dP,m dW2bP2b
nnoremap <leader>dP,l bde2bPB

" Swap two items in a surrounded comma list forwards/backwards
nnoremap <leader>dp,F dWWPB
nnoremap <leader>dp,M dWWPB
nnoremap <leader>dp,L bldt,3wpB
nnoremap <leader>dP,F dW2bhP2bh
nnoremap <leader>dP,M dW2bhP2bh
nnoremap <leader>dP,L bd3w3bPB

" Swap two items in a plain plus list forwards/backwards
nnoremap <leader>dp+f d2w2wP2b
nnoremap <leader>dp+m d2w2wP2b
nnoremap <leader>dp+l bhd2e2epb
nnoremap <leader>dP+f d2w2bP2b
nnoremap <leader>dP+m d2w2bP2b
nnoremap <leader>dP+l bhd2e2bhPb

" Swap two items in a surrounded plus list forwards/backwards
nnoremap <leader>dp+F d2W2WP2B
nnoremap <leader>dp+M d2W2WP2B
nnoremap <leader>dp+L bhd2E4wpB
nnoremap <leader>dP+F d2W3bhP3bh
nnoremap <leader>dP+M d2W3bhP3bh
nnoremap <leader>dP+L b2hd4w2B2hPB

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

" Yank word and delete comma/plus
nnoremap <leader>y, yeF,pwdWbde
nnoremap <leader>y+ yeF+pwd2Wbde
