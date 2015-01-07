#!/bin/bash

echo "Starting ZSH environment install script…"

echo "Cloning oh-my-zsh…"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Creating symlink for custom theme…"
ln -s microjoe.zsh-theme ~/.oh-my-zsh/themes

echo "Done!"
