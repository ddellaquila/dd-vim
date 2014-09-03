#!/usr/bin/env sh

DDPATH="$HOME/.dd-vim"

echo "# Backing up current vim config"
today=`date +%Y%m%d`
for file in $DDPATH $HOME/.vim $HOME/.vimrc $HOME/.gvimrc ; do
    [ -e $file ] && mv -v $file $file.$today
done

echo "# Installing dd-vim in $HOME directory"
mkdir -p $DDPATH
cp -vi vimrc $DDPATH
cp -vi gvimrc $DDPATH
cp -vi *.vim $DDPATH
cp -avi colors $DDPATH
cp -vi version.txt $DDPATH

ln -vs $DDPATH $HOME/.vim
ln -vs $DDPATH/vimrc $HOME/.vimrc
ln -vs $DDPATH/gvimrc $HOME/.gvimrc

echo "# Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "# Installing Vim plugins customizations"
echo "# - MatchTag custom filetypes"
cp -vi bundle/MatchTag/ftplugin/* $DDPATH/bundle/MatchTag/ftplugin/
