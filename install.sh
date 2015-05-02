#!/bin/sh

# Dotfiles directory path, we suppose the user run the script in the current
# dotfiles directory.
DOTFILES_PATH=$(pwd)

installConfig () {
	echo "Installing configuration for $1..."

	path="$DOTFILES_PATH/$2"

	# Check that the file (or dir) exists before linking to it
	if [ ! -f "$path" ] && [ ! -d "$path" ]; then
		echo "File $path not found (maybe run config.sh before)"
		exit 1
	fi

	# Create required subdirectories before linking
	mkdir -p "$HOME/$(dirname "$3")"

	# Create link (-i for asking to delete existing links)
	ln -i -s "$path" "$HOME/$3"
}

# Here starts the installConfig calls

# CLI tools
installConfig "git" "git/gitconfig" ".gitconfig"
installConfig "zsh" "zsh/zshrc" ".zshrc"
installConfig "zprofile" "zsh/zprofile" ".zprofile"
installConfig "dircolors" "zsh/dircolors" ".dircolors"

# Scripts & utils
installConfig "pop" "i3/pop.wav" ".pop.wav"
installConfig "scripts" "scripts" ".scripts"

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
