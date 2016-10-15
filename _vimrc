""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
""""""""""""""""""""""""""""""""""""""""""""""""""

" General
ab imp import
ab ret return

" Java
ab logi LOGGER.info
ab logw LOGGER.warning
ab logs LOGGER.severe
ab psvm public static void main(String[] args)
ab Sys System.out.println

" Javascript
ab ang angular
ab clog console.log
ab Comp Component
ab exp export
ab fun function
ab mod module

" Python
ab pr print

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off search highlighting when loading source
autocmd SourcePre * :let @/ = ""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off before writing file
set nobackup

" Turn backup off when writing file
set nowritebackup

" Turn swap files off
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch to next buffer
nnoremap <silent> <leader>bn :bn!<CR>

" Switch to previous buffer
nnoremap <silent> <leader>bp :bp!<CR>

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
" File Commands
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
filetype indent on

" Convert 2-space indents to 4-space indents
nnoremap <silent> <leader><tab> :%s/  /    /g<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Jumps
""""""""""""""""""""""""""""""""""""""""""""""""""

" Jump to Java class
nnoremap <silent> <leader>jvC /\(public\\|protected\\|private\)\sclass\s\w\+.*\s{<CR>:noh<CR>

" Jump to Java constructor
nnoremap <silent> <leader>jvc /\(public\\|protected\\|private\)\s\w\+(.*)\s{<CR>:noh<CR>

" Jump to next Java method
nnoremap <silent> <leader>jvm /\(public\\|protected\\|private\)\s\w\+\s\w\+(.*)\s{<CR>:noh<CR>

" Jump to next Java interface method
nnoremap <silent> <leader>jvM /\s\+\w\+\s\w\+(.*);<CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Line operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Yank to end of line
nnoremap Y y$

" Add two new lines above/below current line
nnoremap 2O O<esc>O
nnoremap 2o o<esc>o

" Add/delete comment the current line
nnoremap <leader>/a @='I//<space><C-V><esc>j^'<CR>
nnoremap <leader>/d @='^3xj^'<CR>
nnoremap <leader>#a @='I#<space><C-V><esc>j^'<CR>
nnoremap <leader>#d @='^2xj^'<CR>

" Wrap the next word in parentheses
nnoremap <leader>( a(<esc>Ea)<esc>

" Double up backslashes in a line
nnoremap <silent> <leader>\ :s/\\/\\\\/g<CR>

" Indent curly brace block
nnoremap <leader>>{ v$%><lt><lt>$%<lt><lt>
nnoremap <leader>>} v%><lt><lt>$%<lt><lt>

" Indent colon block
nnoremap <silent> <leader>>: v?<C-V>:<CR>><lt><lt>:noh<CR>

" Clear line, but don't delete it
nnoremap <leader>dc @='S<C-V><esc>j'<CR>

" Open new line with indentation deleted
nnoremap <leader>oc o<esc>S<esc>i

" Add semicolon to end of line
nnoremap <leader>; A;<esc>

" Join next line to current line and delete space
nnoremap <leader>J @='Jx'<CR>

" Swap two characters
nnoremap <leader>x xp
nnoremap <leader>X xP

" Move line up/down
nnoremap <leader>k @='ddkP'<CR>
nnoremap <leader>j @='ddp'<CR>

" Swap two items in a comma list
nnoremap <leader>s,f dwwPldw2bpb
nnoremap <leader>s,m dwwPldw2bPb
nnoremap <leader>s,l dwwPldw2bPb

" Swap two items in a sign list
nnoremap <leader>s=f dwwPldw2bpb
nnoremap <leader>s=m dwwPldw2bPb
nnoremap <leader>s=l de2wPldw2bhPb

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pasting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Delete word/line under cursor and paste yanked word/line
nnoremap <leader>dp Pldebye
nnoremap <leader>dP Pkddyy

" Add a new line above/below, then paste above/below
nnoremap <leader>op o<esc>p
nnoremap <leader>Op O<esc>p
nnoremap <leader>oP o<esc>P
nnoremap <leader>OP O<esc>P

" Paste then move up/down a line
nnoremap <leader>pj @='pjB'<CR>
nnoremap <leader>Pj @='PjB'<CR>
nnoremap <leader>pk @='pkB'<CR>
nnoremap <leader>Pk @='PkB'<CR>

" Paste at the start/end of a line
nnoremap <leader>ip I<esc>p
nnoremap <leader>ap A<esc>p

" External paste
nnoremap <leader>p "+gp
nnoremap <leader>P "+gP

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
" function! AirlineInit()
    " let g:airline_section_a = airline#section#create(['mode'])
    " let g:airline_section_b = airline#section#create(['%t'])
    " let g:airline_section_c = airline#section#create(['%y'])
    " let g:airline_section_x = airline#section#create([''])
    " let g:airline_section_y = airline#section#create(['%c'])
    " let g:airline_section_z = airline#section#create(['%l/%L'])
" endfunction
" autocmd VimEnter * call AirlineInit()

" Ctrl-P
" let g:ctrlp_max_files = 100

" Pathogen
" call pathogen#infect()

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
set statusline=%t\ %y\ %m%=Col:\ %c,\ Line:\ %l/%L

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set guioptions=egmrtT

""""""""""""""""""""""""""""""""""""""""""""""""""
" _vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""

" Edit vimrc
command! Erc e $MYVIMRC

" Reload vimrc
command! Lrc source $MYVIMRC

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Open windows below
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
" Workspaces
""""""""""""""""""""""""""""""""""""""""""""""""""

" Switch to Documents folder
command! WsDoc cd C:\Users\CAC\Documents
