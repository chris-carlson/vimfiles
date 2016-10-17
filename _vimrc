""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

" General
ab imp import
ab ret return

" Java
ab psvm public static void main(String[] args)
ab Syst System.out.println

" Javascript
ab clog console.log
ab fun function
ab jstr JSON.stringify

" Python
ab pr print

" Typescript
ab boo boolean
ab cl class
ab con constructor
ab exp export
ab imp import
ab impl implements
ab num number
ab pri private
ab pub public
ab str string

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
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch to next buffer
nnoremap <silent> <leader>bn :bn<CR>

" Switch to previous buffer
nnoremap <silent> <leader>bp :bp<CR>

" Delete buffer
nnoremap <silent> <leader>bd :bd<CR>
nnoremap <silent> <leader>bD :bd!<CR>

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
set wildignore=*~,*.class,*.pyc,*.jar,*.map,*node_modules*

" Switch to the directory of the open buffer
nnoremap <silent> <leader>cd :cd %:p:h<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Comments
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add/delete slash comment on the current line
nnoremap <leader>/a @='I//<space><C-V><esc>j^'<CR>
nnoremap <leader>/d @='^3xj^'<CR>

" Add/delete pound comment on the current line
nnoremap <leader>#a @='I#<space><C-V><esc>j^'<CR>
nnoremap <leader>#d @='^2xj^'<CR>

" Add/delete markup comment on the current line
nnoremap <leader>!a @='I<!--<C-V><esc>A--><C-V><esc>j^'<CR>
nnoremap <leader>!d @='^4x$2h3xj^'<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete last plain/surrounded item in a comma list
nnoremap <leader>d, de2h2xb
nnoremap <leader>D, xdwx2h2xB

" Delete last plain/surrounded item in a plus list
nnoremap <leader>d+ de3h3xb
nnoremap <leader>D+ xdwx3h3xB

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

" Convert 2-space indents to 4-space indents
nnoremap <silent> <leader><tab> :%s/  /    /g<CR>:noh<CR>

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
nnoremap <leader>( a(<esc>Ea)<esc>

" Double up backslashes in a line
nnoremap <silent> <leader>\ :s/\\/\\\\/g<CR>:noh<CR>

" Add closing brace and indent one-line body
nnoremap <leader>}> jo}<esc>k>>

" Clear line, but don't delete it
nnoremap <leader>dc @='S<C-V><esc>j'<CR>

" Open new line with indentation deleted
nnoremap <leader>oc o<esc>S<esc>i

" Add semicolon to end of line
nnoremap <leader>; A;<esc>

" Increment next number
nnoremap <silent> <leader>= /\d<CR><C-A>:noh<CR>
nnoremap <silent> <leader>- /\d<CR><C-X>:noh<CR>

" Join next line to current line and delete space
nnoremap <leader>J @='Jx'<CR>

" Swap two characters
nnoremap <leader>x xp
nnoremap <leader>X xP

""""""""""""""""""""""""""""""""""""""""""""""""""
" Markup
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add closing tag inline/below for element with no attributes
nnoremap <leader>ti> ^yf>$pF<a/<esc>
nnoremap <leader>tb> yyp^a/<esc>

" Add closing tag inline/below for element with attributes
nnoremap <leader>ti<space> ^yt<space>$pa><esc>F<a/<esc>
nnoremap <leader>tb<space> ^yt<space>o_<esc>p^xa/<esc>A><esc>

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

" Perform 5 movements in normal mode
nnoremap <silent> <C-H> @='5h'<CR>
nnoremap <silent> <C-J> @='5j'<CR>
nnoremap <silent> <C-K> @='5k'<CR>
nnoremap <silent> <C-L> @='5l'<CR>

" Perform 5 movements in visual mode
vnoremap <silent> <C-H> @='5h'<CR>
vnoremap <silent> <C-J> @='5j'<CR>
vnoremap <silent> <C-K> @='5k'<CR>
vnoremap <silent> <C-L> @='5l'<CR>

" Move the cursor in insertion mode
inoremap <silent> <C-H> <esc>i
inoremap <silent> <C-J> <esc>ji
inoremap <silent> <C-K> <esc>ki
inoremap <silent> <C-L> <esc>lli

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <esc>o
inoremap <silent> <S-Enter> <esc>O

" Move to next/previous word that matches the regex \w+
nnoremap <silent> <leader>W /\W<CR>/\w<CR>:noh<CR>
nnoremap <silent> <leader>B ?\w<CR>?\W<CR>/\w<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dp de"0P
nnoremap <leader>dP dd"0P

" Add a new line above/below, then paste line above/below
nnoremap <leader>op o<esc>p
nnoremap <leader>Op O<esc>p
nnoremap <leader>oP o<esc>P
nnoremap <leader>OP O<esc>P

" Add a new line above/below, then paste above/below with indentation
nnoremap <leader><tab>op o_<esc>p^x
nnoremap <leader><tab>Op O_<esc>p^x

" Paste then move up/down a line
nnoremap <leader>pj @='pjB'<CR>
nnoremap <leader>Pj @='PjB'<CR>
nnoremap <leader>pk @='pkB'<CR>
nnoremap <leader>Pk @='PkB'<CR>

" Paste at the start/end of a line
nnoremap <leader>ip I<esc>p
nnoremap <leader>ap A<esc>p

" Paste to a comma/plus separated list
nnoremap <leader>p, a,<space><esc>p
nnoremap <leader>p+ a<space>+<space><esc>p

" External paste
nnoremap <leader>p "+gp
nnoremap <leader>P "+gP

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

" Turn off search highlight
nnoremap <silent> <leader>hi :noh<CR>

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

" Swap two items in a plain comma list forwards/backwards
nnoremap <leader>s,f dWWPB
nnoremap <leader>s,m dWWPB
nnoremap <leader>s,l bdt,epB
nnoremap <leader>S,f dW2bP2b
nnoremap <leader>S,m dW2bP2b
nnoremap <leader>S,l bde2bPB

" Swap two items in a surrounded comma list forwards/backwards
nnoremap <leader>s,F dWWPB
nnoremap <leader>s,M dWWPB
nnoremap <leader>s,L bldt,3wpB
nnoremap <leader>S,F dW2bhP2bh
nnoremap <leader>S,M dW2bhP2bh
nnoremap <leader>S,L bd3w3bPB

" Swap two items in a plain plus list forwards/backwards
nnoremap <leader>s+f d2w2wP2b
nnoremap <leader>s+m d2w2wP2b
nnoremap <leader>s+l bhd2e2epb
nnoremap <leader>S+f d2w2bP2b
nnoremap <leader>S+m d2w2bP2b
nnoremap <leader>S+l bhd2e2bhPb

" Swap two items in a surrounded plus list forwards/backwards
nnoremap <leader>s+F d2W2WP2B
nnoremap <leader>s+M d2W2WP2B
nnoremap <leader>s+L bhd2E4wpB
nnoremap <leader>S+F d2W3bhP3bh
nnoremap <leader>S+M d2W3bhP3bh
nnoremap <leader>S+L b2hd4w2B2hPB

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""

" Open a new tab
nnoremap <silent> <leader>tn :tabnew<CR>

" Close tab
nnoremap <silent> <leader>tc :tabclose<CR>
nnoremap <silent> <leader>tC :tabclose!<CR>

" Close all tabs but current tab
nnoremap <silent> <leader>to :tabonly<CR>
nnoremap <silent> <leader>tO :tabonly!<CR>

" Move to next tab
nnoremap <silent> <leader>tt :tabnext<CR>

" Move to previous tab
nnoremap <silent> <leader>tT :tabprevious<CR>

" Move current tab to the right
nnoremap <silent> <leader>tm :tabmove<space>+1<CR>

" Move current tab to the left
nnoremap <silent> <leader>tM :tabmove<space>-1<CR>

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
" Windows
""""""""""""""""""""""""""""""""""""""""""""""""""

" Open windows below instead of above
set splitbelow

" Open new window
nnoremap <silent> <leader>wn :new<CR>

" Split current window horizontally/vertically
nnoremap <silent> <leader>wsh :split<CR>
nnoremap <silent> <leader>wsv :vsplit<CR>

" Close current window
nnoremap <silent> <leader>wc :close<CR>
nnoremap <silent> <leader>wC :close!<CR>

" Close all but current window
nnoremap <silent> <leader>wo :only<CR>
nnoremap <silent> <leader>wO :only!<CR>

" Move between windows
nnoremap <silent> <leader>wk <C-W>k
nnoremap <silent> <leader>wj <C-W>j
nnoremap <silent> <leader>wh <C-W>h
nnoremap <silent> <leader>wl <C-W>l

" Move windows
nnoremap <silent> <leader>wK <C-W>K
nnoremap <silent> <leader>wJ <C-W>J
nnoremap <silent> <leader>wH <C-W>H
nnoremap <silent> <leader>wL <C-W>L

" Rotate window orientation
nnoremap <silent> <leader>wr <C-W>r
nnoremap <silent> <leader>wR <C-W>R

""""""""""""""""""""""""""""""""""""""""""""""""""
" Yanking
""""""""""""""""""""""""""""""""""""""""""""""""""

" Yank to end of line
nnoremap Y y$

" Yank word and delete comma/plus
nnoremap <leader>y, yeF,pwdWbde
nnoremap <leader>y+ yeF+pwd2Wbde
