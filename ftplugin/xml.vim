runtime! ftplugin/html.vim

nnoremap <buffer> <Localleader>l %!xmllint --format --recover -<CR>:w<CR>
