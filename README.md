DD Vim Configuration
====================

This is the personal Vim configuration of Danilo Dellaquila.

Managing Vim plugins has been always difficult, all files are
stored into common directories, which means that updating or
disabling plugins can be a real mess, so I decided to rewrite
my Vim configuration from scratch and make use of
[Vundle](https://github.com/gmarik/vundle), a plugin management
system that make a well organized Vim directory. Also Vundle
ensures that the latest versions of your plugins are installed
and makes it easy to keep them up to date.

Customizing Vim configuration is really a personal thing, there are
so many settings that it's quite impossible that `dd-vim` or any other
`.vimrc` you can find out there fits all your needs, but it can be
a good starting point to make your own Vim configuration, so fork me
on GitHub and send me your pull requests, if they fit my needs as well
I'll be happy to merge them.

Features
--------

I divided the main `vimrc` configuration file in the following
sections to group similar settings together, they are self
explanatory so just have a look to the file.

* General Settings
* Formatting
* Programming Settings
* Vim UI
* GVim GUI
* External Configurations

GVim use the usual `gvimrc` file, but there are also few basic
setting in the "GVim GUI" section of `virmrc` that can be useful
in case `.gvimrc` is not used or is missing.

Inside the "External Configuration" section, there are calls to
separated vim files for specific needs.

* `bundles.vim`, load Vim plugins
* `plugins.vim`, specific settings for Vim plugins
* `mappings.vim`, define key mappings
* `filetype.vim`, settings for specific file types
* `abbreviations.vim`, define abbreviations
* `custom.vim`, define custom settings

Colors
------

I was never happy with Vim colors, and probably I'll never be, so
few years ago I wrote a couple of colorscheme files, for a dark and
light background, you can find them inside the directory `colors`.

Plugins
-------

I used to have much more plugins but it became a nightmare managing them
all, so now that I started from scratch again I decided to put the ones
that I really use everyday and adding new plugins with Vundle when
I need them.

`dd-vim` currently contains the following Vim plugins.

### NERDTree

The NERD tree allows you to explore your filesystem and to open files
and directories. It presents the filesystem to you in the form of a
tree which you manipulate with the keyboard and/or mouse. It also
allows you to perform simple filesystem operations.

To launch NERDTree use `<F9>`. You can learn more about it with:

    :help NERDTree.


**Repository:** [https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

### vim-gnupg

This script implements transparent editing of gpg encrypted files.
The filename must have a ".gpg", ".pgp" or ".asc" suffix. When opening
such a file the content is decrypted, when opening a new file the
script will ask for the recipients of the encrypted file. The file
content will be encrypted to all recipients before it is written.
The script turns off viminfo and swapfile to increase security.

**Repository:** [https://github.com/jamessan/vim-gnupg](https://github.com/jamessan/vim-gnupg)

### MatchTag

This plugin highlights the matching HTML tag when the cursor is positioned
on a tag. It works in much the same way as the MatchParen plugin.

**Repository:** [https://github.com/gregsexton/MatchTag](https://github.com/gregsexton/MatchTag)

### Adding New Plugins

To add a new Vim plugin, you need to edit the `bundles.vim` file, just
add a line with a `Bundle` command like this:

    " 'git_repo_uri' should be a valid uri to git repository
    Bundle 'git_repo_uri'

or

    " 'script-name' should be an official vim-scripts name
    Bundle 'script_name'

Vundle loves Github, so you can use a short uri like this:

    Bundle 'tpope/vim-fugitive'

which equals the full uri:

    Bundle 'http://github.com/tpope/vim-fugitive.git'

Here some examples taken from [Vundle](https://github.com/gmarik/vundle)
documentation.

    " For repositories on GitHub
    Bundle 'tpope/vim-fugitive'
    Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
    "
    " For official vim-scripts repositories
    Bundle 'L9'
    Bundle 'FuzzyFinder'
    "
    " For non GitHub repositories
    Bundle 'git://git.wincent.com/command-t.git'

*NOTE: Vundle defaults to http:// protocol for the short URIs*

Installation
------------

Enter `dd-vim` directory and execute `install.sh` script:

    $ cd dd-vim
    $ ./install.sh

Credits
-------

* [gmarik](https://github.com/gmarik) for his Vundle documentation
  that I used in "Adding New Plugins" section
* `spiderwebdark.vim` is based on [`dante.vim`](http://www.vim.org/scripts/script.php?script_id=611)
  colorscheme by Caciano Machado
* `spiderweblight.vim` is based on [`silent.vim`](http://www.vim.org/scripts/script.php?script_id=2266)
  colorscheme by Pascal Vasilii

