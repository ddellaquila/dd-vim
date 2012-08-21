"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" DD Vim Configuration
"
" Danilo Dellaquila
" K-Gigas Computers S.L.
" Ver. 3.0, Tue, 21 Aug 2012 19:30:46 +0200
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" File: custom.vim
"
"##############################################################"

" Highlighting {

    " Highlighting unwanted white spaces
    " Show leading whitespace that includes spaces, and trailing whitespace.
    "autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()

" }

