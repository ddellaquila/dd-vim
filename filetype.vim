"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" DD Vim Configuration
"
" Danilo Dellaquila
" K-Gigas Computers S.L.
" Ver. 3.0, Tue, 21 Aug 2012 09:25:20 +0200
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" File: filetype.vim
"
"##############################################################"

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.zcml     set filetype=xml
  au! BufRead,BufNewFile *.rst      setfiletype rst
  au! BufRead,BufNewFile *.txt      setfiletype rst
  au! BufRead,BufNewFile *.md       setfiletype markdown
augroup END

