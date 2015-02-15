#!/bin/bash

# Install script for vim plugins.

function cloneGithub {
	# Use your preferred retrieve method (git clone or zip archive) here

	#cloneGithubGit "$1"
	cloneGithubZip "$1"
}

function checkPrg {
	hash "$1" 2>/dev/null || {
		echo >&2 "$1 is not installed."
		echo >&2 "Please install $1 or change installation method in" \
			"the script."
		exit 1
	}
}

function cloneGithubGit {
	checkPrg git

    echo "Cloning $1..."
    git clone https://github.com/$1
}

function cloneGithubZip {
	checkPrg unzip

	url="https://github.com/$1/archive/master.zip"
	repo=$(expr match "$1" '.*/\(.*\)')

	echo "Downloading ZIP snapshot $1"

	wget "$url"
	unzip master.zip
	mv "$repo-master" "$repo"
	rm master.zip
}

echo "Creating directories..."
mkdir -p ~/.vim/bundle && mkdir -p ~/.vim/autoload

checkPrg curl

echo "Installing pathogen..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins
cd ~/.vim/bundle

echo
echo "Installing plugins..."

cloneGithub "Raimondi/delimitMate"
cloneGithub "drmingdrmer/xptemplate"
cloneGithub "mattn/emmet-vim"
cloneGithub "klen/python-mode"
cloneGithub "scrooloose/syntastic"
cloneGithub "tpope/vim-fugitive"
cloneGithub "tpope/vim-surround"
cloneGithub "vim-scripts/DoxygenToolkit.vim"
cloneGithub "wting/rust.vim"
cloneGithub "Shougo/neocomplete.vim"
