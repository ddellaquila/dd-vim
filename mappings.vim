"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" DD Vim Configuration
"
" Danilo Dellaquila K-Gigas Computers S.L.
"
" This is the personal Vim configuration of Danilo Dellaquila.
"
" File: mappings.vim
"
"##############################################################"

" Key Reference Table {

    "<BS>           Backspace
    "<Tab>          Tab
    "<CR>           Enter
    "<Enter>        Enter
    "<Return>       Enter
    "<Esc>          Escape
    "<Space>        Space
    "<Up>           Up arrow
    "<Down>         Down arrow
    "<Left>         Left arrow
    "<Right>        Right arrow
    "<F1> - <F12>   Function keys 1 to 12
    "#1, #2..#9,#0  Function keys F1 to F9, F10
    "<Insert>       Insert
    "<Del>          Delete
    "<Home>         Home
    "<End>          End
    "<PageUp>       page-up
    "<PageDown>     page-down

" }

" Key Mappings {

    "Map Leader key
    let mapleader = ","

    " Copy and paste
    map <Leader><C-c> "+y
    map <Leader><C-v> "+gP

    " Select all and copy
    map <Leader>a ggVG"+y

    " Toogle Mouse
    map <Leader>m :set mouse=a<CR>
    map <Leader>M :set mouse=<CR>

    " Insert the current date
    map <Leader>d :read !date --rfc-3339=date<CR>kJ$
    map <Leader>D :read !date -R<CR>kJ

    " Add a reStructuredText link
    map <Leader>l o``_<CR>.. _``: link<ESC>k2b

    " Python Debugging
    map <Leader>p Oimport pdb; pdb.set_trace()
    map <Leader>P Oprint("variable=%s" % variable)<Esc>

    """ Reformat text
    map <Leader>f gq}
    map <Leader>F gqG

" }

" End of mappings.vim
