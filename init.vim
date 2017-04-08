" # DD neovim configuration
"
" File: init.vim
" Author: Danilo Dellaquila
" Date: Fri, 07 Apr 2017 18:02:53 +0200
"
" This is file is part of the personal neovim configuration of
" Danilo Dellaquila.
"

" ## Generic Settings
"
" Set vim directory path
let $VIMPATH=$HOME."~/.config/nvim"

" Disable backup
set nobackup

" Do not automatically load files changed outside of Vim
set noautoread

" Enable autowrite
"set autowriteall

" Set some search options
set noincsearch
set ignorecase
set smartcase
" Map <C-L> to clear highlight
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Increase history
if &history < 1000
  set history=1000
endif

" Don't consider octal numbers that have leading zeros for padding,
" so that such numbers are incremented and decremented as expected.
set nrformats-=octal

" ## Vim UI
"
" Terminator colors
set termguicolors

" Line numbers
set number

" Set statusline, always show it with ruler
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b\ HEX=\%02.2B]\ [POS=%04l,%04v\ %p%%\ %L]
set laststatus=2
set ruler

" Minimal number of screen lines/column to keep
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" Background
set background=dark

" Color Scheme

" Enable true-color in a terminal emulator that DOES support 24-bit color,
" see https://github.com/joshdick/onedark.vim#installation
if (has("termguicolors"))
    set termguicolors
endif
" ... keep it disable for Terminator
"if ! empty("g:$TERMINATOR_UUID")
    "set notermguicolors
"endif
colorscheme desert

" ## Programming and Formatting
"
" Set maximum width of text line
set textwidth=72

" Automatic Indentation
set smartindent

" Tabs settings
"set noexpandtab (better for Golang code, this is the default in neovim)
set expandtab
set tabstop=4
set smarttab
set shiftwidth=4
set shiftround

" Set folding method and leave all folds open
set fdm=indent
set foldlevel=99

" Syntax Highlighting
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" ## Key Mappings
"
source $VIMPATH/mappings.vim

" Time out on :mappings and key codes
set ttimeout
set ttimeoutlen=100

" ## Plugins
"
source $VIMPATH/plugins.vim

" ## File Types
"
" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

" Set filetype for known extesions
augroup filetypedetect
autocmd BufNewFile,BufRead *.ledger set filetype=ledger
autocmd BufNewFile,BufRead *.adoc set filetype=asciidoc
augroup END

" Set indentation
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
