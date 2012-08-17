"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker spell:
"
" DD Vim Configuration
"
" Danilo Dellaquila
" K-Gigas Computers S.L.
" Ver. 3.0, Fri, 17 Aug 2012 21:05:48 +0200
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" File: vimrc
"
"##############################################################"

" General Settings {

    " We use Vim settings
    set nocompatible        " Must be the first line

    " Background
    "set background=light
    set background=dark

    " Disable backup
    set nobackup
    set nowritebackup

    " Set some search options
    "set incsearch
    set noignorecase

" }

" Formatting {

    " Set maximum width of text line
    set textwidth=72

    " Tabs settings
    set expandtab
    set tabstop=4
    set shiftwidth=4

    " Automatic Indentation
    set autoindent
    set shiftwidth=4

" }

" Programming Settings {

    " Set backspace key working properly
    set backspace=indent,eol,start

    " Set folding method and leave all folds open
    set fdm=indent
    set foldlevel=99

    " Enconding text
    set encoding=utf8

    " Syntax
    syntax on

" }

" Vim UI {

    " Statusline
    set laststatus=2
    set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b\ HEX=\%02.2B]\ [POS=%04l,%04v\ %p%%\ %L]

    " Line numbers
    set number

    " Set visual bell
    set vb

    " Enable mouse in a terminal
    "set mouse=a
    set mouse=

" }

" GVim GUI {
    " Set useful settings for GVim in case .gvimrc is missing
    if has('gui_running')

        " Background
        set background=light

        " Enable mouse in a windows
        set mouse=a

    endif
" }

" End of vimrc
