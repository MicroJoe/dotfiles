#!/bin/sh

# .config dir
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

dir=$(pwd)

# links in .config
ln -vfs $dir/dunst ~/.config/
ln -vfs $dir/i3 ~/.config/
ln -vfs $dir/i3status ~/.config/

# vim
ln -vfs $dir/vim/vimrc ~/.vimrc
ln -vfs $dir/vim/vim ~/.vim

# misc
ln -vfs $dir/misc/Xresources ~/.Xresources
