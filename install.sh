#!/usr/bin/env sh

DDPATH="$HOME/.dd-vim"

echo "Backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
    [ -e $i ] && mv -v $i $i.$today
done

echo "Installing dd-vim in $HOME directory"
mkdir -p "$HOME/.dd-vim"
cp -vi vimrc $DDPATH

ln -s $DDPATH/vimrc $HOME/.vimrc
