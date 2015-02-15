#!/bin/bash

function cloneGithub {
	# Use your preferred retrieve method (git clone or zip archive) here
	cloneGithubZip "$1"
}

function cloneGithubGit {
    echo "Cloning $1..."
    git clone https://github.com/$1
}

function cloneGithubZip {
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
