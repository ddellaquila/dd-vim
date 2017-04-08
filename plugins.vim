" # DD neovim configuration
"
" File: plugins.vim
" Author: Danilo Dellaquila
" Date: Fri, 07 Apr 2017 20:59:44 +0200
"
" This is file is part of the personal neovim configuration of
" Danilo Dellaquila.
"

" ##  Plugins
"
" Plugins are managed by vim-plug, make sure you use single quotes.

call plug#begin('"~/.config/nvim/plugged')

" NERDTree: directory tree viewer
"
Plug 'scrooloose/nerdtree'
"
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '__pycache__']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=0
let NERDTreeCaseSensitiveSort = 1
"
map <F9> :NERDTreeToggle <CR>

" UltiSnips: snippets engine
"
" Use ultisnips if your Vim has Python support,
" otherwise you can use SnipMate ('garbas/vim-snipmate').
"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
"
nnoremap <Leader>se :UltiSnipsEdit<cr>

" YouCompleteMe: code-completion engine
"
" Packages needed to compile YCM
" $ sudo dnf install automake gcc gcc-c++ kernel-devel cmake
" $ sudo dnf install python-devel python3-devel
" $ sudo dnf install ncurses-compat-libs
" $ sudo dnf install nodejs   # for Javascript completion
"
" Compiling YCM with semantic support for C-family, Go and JavaScript:
" see https://github.com/Valloric/YouCompleteMe for more languages.
" $ cd ./plugged/YouCompleteMe
" $ ./install.py --clang-completer --gocode-completer --tern-completer
"
Plug 'Valloric/YouCompleteMe'
"
let g:ycm_dont_warn_on_startup = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_blacklist = {}
"
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" Supertab: enhanced tab behavior based on context
"
Plug 'ervandew/supertab'
"
" make YCM compatible with UltiSnips (using supertab)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

" Syntastic: syntax checking
"
Plug 'scrooloose/syntastic'
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = {
	\ "mode": "active",
    \ "active_filetypes": ["py", "go"],
	\ "passive_filetypes": [] }
"
map <Leader>s :SyntasticCheck <CR>
map <Leader>t :SyntasticToggleMode <CR>
"
" Python Linter
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
"
" HTML5 Linter
" This linter does not integrate with jinja templates
let g:syntastic_html_tidy_exec = 'tidy5'

" NERD Commenter:
"
Plug 'scrooloose/nerdcommenter'
"
map <Leader>/ ,ccj

" Git:
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Tagbar:
"
" You need to install ctags and gotags, see
" https://github.com/majutsushi/tagbar/wiki
" for support to additional filetypes
" sudo dnf install ctags.x86_64, gotags.x86_64
Plug 'majutsushi/tagbar'
"
map <F8> :TagbarToggle<CR>

" Golang:
"
Plug 'fatih/vim-go'
"
" Vim-go Syntax Highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"
" Enable goimports
let g:go_fmt_command = "goimports"
"
" Go Linter
let g:go_list_type = "quickfix"
"
" Mappings
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>gds <Plug>(go-def-split)
au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
au FileType go nmap <Leader>ggd <Plug>(go-doc)
au FileType go nmap <Leader>ggv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ggb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gs <Plug>(go-implements)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gm <Plug>(go-rename)

" HTML Editing
Plug 'gregsexton/MatchTag'

" Plugins for Hashicorp tools
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'

" Yaml Syntax
"
Plug 'stephpy/vim-yaml'

" Ansible Syntax
"
Plug 'pearofducks/ansible-vim'

" Ledger syntax highlighting
"
Plug 'ledger/vim-ledger'

" GPG support
" This is not working yet in neovim,
" see https://github.com/jamessan/vim-gnupg/issues/32
"Plug 'jamessan/vim-gnupg'

" Add plugins to &runtimepath
call plug#end()
