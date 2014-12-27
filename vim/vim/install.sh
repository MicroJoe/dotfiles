#!/bin/sh

function cloneGithub {
    echo "Cloning $1..."
    git clone https://github.com/$1
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
