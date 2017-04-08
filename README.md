# DD Vim Configuration


This is the personal vim configuration of Danilo Dellaquila.

Customizing Vim configuration is really a personal thing, there are
so many settings that it's quite impossible that `dd-vim` or any other
`.vimrc` you can find out there fits all your needs, but it can be
a good starting point to make your own Vim configuration.


## Neovim

[Neovim](https://neovim.io) is a fork of Vim which is focused on
extensibility and usability by using a new plugin architecture.

I recently switched to neovim, so this configuration is optimized for it.


## Plugins

I manage my plugins with
[`vim-plug`](https://github.com/junegunn/vim-plug), which is pretty easy
to install, just download
[plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
and put it in the `autoload` directory.

All plugins settings are defined in the `plugins.vim` file, currently
`dd-vim` contains the following plugins.

* [nerdtree](https://github.com/scrooloose/nerdtree), directory tree viewer
* [ultisnips](https://github.com/SirVer/ultisnips), snippets engine
* [vim-snippets](https://github.com/honza/vim-snippets), snippets engine
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe), code-completion engine
* [supertab](https://github.com/ervandew/supertab), enhanced tab behavior based on context
* [syntastic](https://github.com/scrooloose/syntastic), syntax checking
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter), commenting tool
* [vim-fugitive](https://github.com/tpope/vim-fugitive), Git wrapper
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter), shows a git diff in the gutter
* [tagbar](https://github.com/majutsushi/tagbar), a class outline viewer
* [vim-go](https://github.com/fatih/vim-go), Go language support 
* [MatchTag](https://github.com/gregsexton/MatchTag'), HTML editing
* [vim-terraform](https://github.com/hashivim/vim-terraform), Terraform integration
* [vim-vagrant](https://github.com/hashivim/vim-vagrant), Vagrant integration
* [ansible-vim](https://github.com/pearofducks/ansible-vim), Ansible syntax
* [vim-yaml](https://github.com/stephpy/vim-yaml), Yaml syntax
* [vim-ledger](https://github.com/ledger/vim-ledger), Ledger syntax highlighting


## Mappings

I use the `,` key as `<Leader>`.

You can find few key maps in the `mappings.vim` file, while plugins
specific mappings are defined in `plugins.vim`.

I also put some classical Copy/Cut/Paste keys shortcuts, which I do not use them
but they can be useful if you feel more comfortable with.


## License

dd-vim Copyright (C) 2009-2017, Danilo Dellaquila

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
