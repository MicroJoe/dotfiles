#!/bin/sh

# .config dir
if [ ! -d ~/.config ]; then
    mkdir ~/.config
fi

# links in .config
ln -s dunst ~/.config/
ln -s i3 ~/.config/
ln -s i3status ~/.config/

# vim
ln -s vim/vimrc ~/.vimrc
ln -s vim/vim ~/.vim

# misc
ln -s misc/Xresources ~/.Xresources
