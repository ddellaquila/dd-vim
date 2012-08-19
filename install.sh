#!/usr/bin/env sh

DDPATH="$HOME/.dd-vim"

echo "# Backing up current vim config"
today=`date +%Y%m%d`
for file in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $DDPATH; do
    [ -e $file ] && mv -v $file $file.$today
done

echo "# Installing dd-vim in $HOME directory"
mkdir -p $DDPATH
cp -vi vimrc $DDPATH
cp -vi *.vim $DDPATH
cp -vi version.txt $DDPATH

ln -vs $DDPATH $HOME/.vim
ln -vs $DDPATH/vimrc $HOME/.vimrc

echo "# Installing Vundle"
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "# Installing Vim plugins using Vundle"
vim +BundleInstall! +BundleClean +qall
