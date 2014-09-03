"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" DD Vim Configuration
"
" Danilo Dellaquila K-Gigas Computers S.L.
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" File: custom.vim
"
"##############################################################"

" Highlighting {

    " Highlighting unwanted white spaces
    " Show leading whitespace that includes spaces, and trailing whitespace.
    autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()

    augroup HiglightTODO
    autocmd!
    autocmd BufWinEnter,WinEnter,VimEnter * :silent! call matchadd('Todo', 'TODO\|FIXME', -1)
    augroup END

" }

