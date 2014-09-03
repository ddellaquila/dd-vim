"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" DD Vim Configuration
"
" Danilo Dellaquila K-Gigas Computers S.L.
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" Note that gvimrc file is always sourced after the vimrc file.
"
" File: gvimrc
"
"##############################################################"

" Color Scheme and Background
colorscheme default
"colorscheme spiderweblight
set background=light
"colorscheme spiderwebdark
"set background=dark

" Enable mouse in a windows
set mouse=a

" Select Mode
set selectmode=mouse,key,cmd
set keymodel=
behave xterm

" Default font
set guifont=Courier\ 10\ Pitch

" Fonts for specific file type
" autocmd BufEnter *.txt set guifont=Arial\ 12

" Set windows size and position
set columns=115
set lines=37
winpos 150 50
winsize 135 45

" Turn off toolbar
set guioptions-=T

" Toggle menu (F2), toolbar (F3 and right scollbar (F4)
"function! ToggleMenu()
"    if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif
"endfunction
"map <silent> <F2> :call ToggleMenu()<CR>
nnoremap <F2> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <F3> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <F4> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Add menu Tab
amenu <silent> T&abs.&New :confirm tabnew<cr>
amenu <silent> T&abs.&Previous :tabprevious<cr>
amenu <silent> T&abs.Ne&xt :tabnext<cr>
amenu <silent> T&abs.&Delete :confirm tabclose<cr>

" End of gvimrc
