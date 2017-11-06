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
nnoremap <Leader>c< v/<.\{-}\([([{<].\{-}[)\]}>]\)\{-}\zs><CR>d:noh<CR>i
nnoremap <Leader>d< v/<.\{-}\([([{<].\{-}[)\]}>]\)\{-}\zs><CR>d:noh<CR>
nnoremap <Leader>y< v/<.\{-}\([([{<].\{-}[)\]}>]\)\{-}\zs><CR>y:noh<CR>


" Delete text from current position to the next pair of matching characters, preserving the content inside
nnoremap <Leader>D( dt(di(hPl2xB
nnoremap <Leader>D[ dt[di[hPl2xB
nnoremap <Leader>D{ dt{di{hPl2xB
nnoremap <Leader>D< dt<di<hPl2xB

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

" Set working directory to that of the currently open file
command! Cd cd %:p:h

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

" Highlight from current line until end of file
nnoremap <Leader>vG VG

" Change/delete/highlight/yank from current line until next blank line
nnoremap <Leader>cn 0d/\(^\n\\|\%$\)<CR>:noh<CR>O
nnoremap <Leader>dn 0d/\(^\n\\|\%$\)<CR>"_dd:noh<CR>
nnoremap <Leader>vn 0V/\(^\n\\|\%$\)<CR>k:noh<CR>
nnoremap <Leader>yn 0y/\(^\n\\|\%$\)<CR>n-:noh<CR>

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

" Indent/unindent curly brace block
nnoremap <Leader>>{ $vi{>
nnoremap <Leader><lt>{ $vi{<lt>
nnoremap <Leader>>} vi{>
nnoremap <Leader><lt>} vi{<lt>

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
nnoremap <Leader>i~ ~hi

" Delete until next capital letter and make it lowercase
nnoremap <Leader>d~ v/\u<CR>hd~h:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't add comment on new line
set formatoptions-=ro

" Add two new lines above/below current line
nnoremap 2O O<Esc>O
nnoremap 2o o<Esc>o

" Add two new lines and go into insert mode on the first
nnoremap <Leader>oo o<Esc>O

" Select to the end of the line
vnoremap $ $h

" Delete/replace selection without yanking it
vnoremap <Leader>d "_d
vnoremap <Leader>r "_dP

" Double up backslashes in a line
nnoremap <silent> <Leader>2\ :s/\\/\\\\/g<CR>:noh<CR>

" Add semicolon to end of line
nnoremap <Leader>; A;<Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""
" List
""""""""""""""""""""""""""""""""""""""""""""""""""

" Insert/append to a comma/plus separated list
nnoremap <Leader>i, i,<Space><Esc>hi
nnoremap <Leader>i+ i<Space>+<Space><Esc>2hi
nnoremap <Leader>a, a,<Space>
nnoremap <Leader>a+ a<Space>+<Space>

" Delete item from comma/plus separated list, not yanking the comma/plus
nnoremap <Leader>dl v/\w\+\([([{<].\{-}[)\]}>]\)\{-}\zs\(,\\|\s+\\|)\)<CR>hd"_df<Space>:noh<CR>

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
nnoremap <silent> <Leader>w_ /_\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b_ ?_\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w. /\.\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b. ?\.\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w, /,\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b, ?,\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w( /(\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b( ?(\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w[ /[\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b[ ?[\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w{ /{\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b{ ?{\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w< /<\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b< ?<\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w/ /\/\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b/ ?\/\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w: /:\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b: ?:\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w# /#\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b# ?#\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>w- /-\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>b- ?-\zs\w<CR>:noh<CR>

" Move to next/previous part of a file path
nnoremap <silent> <Leader>wp /\('\\|"\\|\\\\\)\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>bp ?\('\\|"\\|\\\\\)\zs\w<CR>:noh<CR>

" Move to next/previous interpolation
nnoremap <silent> <Leader>wi /\{\{\zs\w<CR>:noh<CR>
nnoremap <silent> <Leader>bi ?\{\{\zs\w<CR>:noh<CR>

" Move to next/previous capital letter
nnoremap <silent> <Leader>w~ /\u<CR>:noh<CR>
nnoremap <silent> <Leader>b~ ?\u<CR>:noh<CR>

" Move to start/end of next/previous single/double quote string
nnoremap <silent> <Leader>w' /'\zs.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>W' /'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>e' /'.\{-}\zs[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>E' /'.\{-}[^\\]\zs'<CR>:noh<CR>
nnoremap <silent> <Leader>b' ?'\zs.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>B' ?'.\{-}[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>ge' ?'.\{-}\zs[^\\]'<CR>:noh<CR>
nnoremap <silent> <Leader>gE' ?'.\{-}[^\\]\zs'<CR>:noh<CR>
nnoremap <silent> <Leader>w" /"\zs.\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <Leader>W" /".\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <Leader>e" /".\{-}\zs[^\\]s"<CR>:noh<CR>
nnoremap <silent> <Leader>E" /".\{-}[^\\]\zss"<CR>:noh<CR>
nnoremap <silent> <Leader>b" ?"\zs.\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <Leader>B" ?".\{-}[^\\]"<CR>:noh<CR>
nnoremap <silent> <Leader>ge" ?".\{-}\zs[^\\]s"<CR>:noh<CR>
nnoremap <silent> <Leader>gE" ?".\{-}[^\\]\zss"<CR>:noh<CR>

" Move to start of next/previous string concatenation
nnoremap <silent> <Leader>wc /\(=\s\\|[([{<]\\|\s+\s\)\('\\|"\)\=\zs.<CR>:noh<CR>
nnoremap <silent> <Leader>bc ?\(=\s\\|[([{<]\\|\s+\s\)\('\\|"\)\=\zs.<CR>:noh<CR>

" Move to the line after/before the next/previous blank line
nnoremap <silent> <Leader>]] /\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> <Leader>[[ ?\(\n\{2,}\(\s\+\)\=\\|\%^\)\zs\S<CR>:noh<CR>
nnoremap <silent> <Leader>][ /\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>
nnoremap <silent> <Leader>[] ?\S\+\(\n\{2,}\\|\%$\)<CR>:noh<CR>

" Move to the next/previous blank line
nnoremap <silent> ]n /^\n<CR>:noh<CR>
nnoremap <silent> [n ?^\n<CR>:noh<CR>

" Add a line above/below in insertion mode
inoremap <silent> <C-Enter> <Esc>o
inoremap <silent> <S-Enter> <Esc>O

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <Leader>dep "_deP
nnoremap <Leader>dEp "_dEP
nnoremap <Leader>dwp "_dwP
nnoremap <Leader>dWp "_dWP
nnoremap <Leader>ddp "_ddPj

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

" Paste line, increment next number, and yank that line
nnoremap <silent> <Leader>p<C-A> yyp/\d<CR><C-A>:noh<CR>

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
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
let g:ctrlp_custom_ignore='\v([\\]\.(git|hg|svn)$)|([\\]bundle$)'

" jsx
let g:jsx_ext_required=0

" nerdtree
nnoremap <C-N> :NERDTree<CR>
let NERDTreeIgnore=['\~$', 'class$', 'jar$', 'map$', 'pyc$', 'dist$[[dir]]', 'node_modules$[[dir]]', '__pycache__$[[dir]]', 'build$[[dir]]', 'bin$[[dir]]', 'bundle$[[dir]]']

" pathogen
call pathogen#infect()

" ultisnips
let g:UltiSnipsNoPythonWarning=1

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
nnoremap <silent> <Leader>k @='kddpk'<CR>
nnoremap <silent> <Leader>j @='ddp'<CR>

" Swap two characters forwards/backwards
nnoremap <Leader>x @='xp'<CR>
nnoremap <Leader>X @='xhP'<CR>

" Swap two items in a list forwards/backwards
nnoremap <silent> <Leader>ss v/\(,\\|\s+\s\)<CR>hd/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\)<CR>P/\(\w\\|'\\|"\)<CR>:noh<CR>
nnoremap <silent> <Leader>SS v/\(,\\|\s+\s\\|)\\|]\\|}\)<CR>hd?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>Plv/\(,\\|\s+\s\)<CR>hd/\s<CR>p?\(,\\|\s+\s\\|(\\|[\\|{\)<CR>n/\(\w\\|'\\|"\)<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Strings
""""""""""""""""""""""""""""""""""""""""""""""""""

" Append plus and nothing or single/double quote string
nnoremap <Leader>++ a<Space>+<Space>
nnoremap <Leader>+' a<Space>+<Space>''<Esc>i
nnoremap <Leader>+" a<Space>+<Space>""<Esc>i

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

" Yank selection to clipboard
vnoremap <Leader>y "+y

" Yank curly brace block
nnoremap <Leader>yb V$%y$%
