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

    " Set DD Vim Configuration path
    let $DDPATH=$HOME."/.dd-vim"

    " Background
    "set background=light
    set background=dark

    " Disable backup
    set nobackup
    set nowritebackup

    " Set some search options
    "set incsearch
    set noignorecase

    " Setup Bundle Support {

        filetype off            " Required by Vundle

        " The next two lines ensure that the ~/.vim/bundle/ system works
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()

        " Let Vundle manage Vundle, this is required by Vundle
        Bundle 'gmarik/vundle'

    " }

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

" External Configurations {

    " Load Bundles
    source $DDPATH/bundles.vim

    " Plugins Settings
    source $DDPATH/plugins.vim

    " Key Mappings
    source $DDPATH/mappings.vim

" }

" End of vimrc
