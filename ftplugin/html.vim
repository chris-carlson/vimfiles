""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

let g:html_indent_inctags="md-autocomplete,md-button-toggle,md-card,md-card-actions,md-card-content,md-card-header,md-card-subtitle,md-card-title,md-checkbox,md-chip,md-chip-list,md-grid-list,md-grid-tile,md-icon,md-input-container,md-list,md-list-item,md-menu,md-nav-list,md-option,md-progress-bar,md-progress-spinner,md-radio-button,md-radio-group,md-select,md-sidenav,md-slide-toggle,md-slider,md-tab,md-tab-group,md-toolbar"

""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
""""""""""""""""""""""""""""""""""""""""""""""""""

" Go to previous/next tag
nnoremap <silent> <buffer> [t ?<[^/]\+><CR>:noh<CR>
nnoremap <silent> <buffer> ]t /<[^/]\+><CR>:noh<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Operations
""""""""""""""""""""""""""""""""""""""""""""""""""

" Add closing tag for non-attributed/attributed tag inline/below
nnoremap <buffer> <localleader>at ^lyt>$a<lt>/<esc>pa><esc>$
nnoremap <buffer> <localleader>aT ^lyt<space>$a<lt>/<esc>pa><esc>$
nnoremap <buffer> <localleader>At ^lyt>o<lt>/<esc>pa><esc>$
nnoremap <buffer> <localleader>AT ^lyt<space>o<lt>/<esc>pa><esc>$

" Add/change/delete Angular interpolation
nnoremap <buffer> <localleader>a{ a{{}}<esc>hi
nnoremap <buffer> <localleader>ci{ 2lct}
nnoremap <buffer> <localleader>ca{ c2f}
nnoremap <buffer> <localleader>di{ 2ldt}
nnoremap <buffer> <localleader>da{ d2f}

" Delete last attribute on a tag
nnoremap <buffer> <localleader>da dt>hx
