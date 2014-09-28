#!/bin/bash

function installConfig {
    echo "Installing configuration for $1..."

    # Check that the file (or dir) exists before linking to it
    if [ ! -f ~/dotfiles/$2 ] && [ ! -d ~/dotfiles/$2 ]; then
        echo "File ~/dotfiles/$2 not found (maybe run config.sh before)"
        exit 1
    fi

    # Create required subdirectories before linking
    mkdir -p ~/$(dirname $3)

    # Create link (-i for asking to delete existing links)
    ln -i -s ~/dotfiles/$2 ~/$3
}

# Check that the ~/dotfiles directory exists before we do anything
if [ ! -d ~/dotfiles ]; then
    echo "Directory ~/dotfiles not found, abort."
    exit 1
fi

# Here starts the installConfig calls

# CLI tools
installConfig "git" "git/gitconfig" ".gitconfig"
installConfig "zsh" "zsh/zshrc" ".zshrc"
installConfig "zprofile" "zsh/zprofile" ".zprofile"
installConfig "dircolors" "zsh/dircolors" ".dircolors"

# Vim
installConfig "vimrc" "vim/vimrc" ".vimrc"
installConfig "vim" "vim/vim" ".vim"

# Graphical tools
installConfig "i3" "i3/config.out" ".config/i3/config"
installConfig "i3status" "i3status/config.out" ".config/i3status/config"
installConfig "dunst" "dunst/dunstrc.out" ".config/dunst/dunstrc"

installConfig "termite" "termite/config.out" ".config/termite/config"

# XDG
installConfig "XDG directories" "xdg/user-dirs.dirs" ".config/user-dirs.dirs"
