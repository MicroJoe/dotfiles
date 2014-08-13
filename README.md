# MicroJoe's dotfiles

Includes configuration for the following programs :

 * vim
 * i3
 * i3status
 * dunst
 * zsh
 * git
 * urxvt
 * fbterm

You are encouraged to clone this repository and adapt it to your own needs !

## Overview

This repository contains both raw configuration files and *templates*-based
configuration files.

### Raw configuration files

Just create symlinks to revelant places, like :

    :::console
    $ ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

### Template-based configuration files

These template files are marked with a `.in` suffix and are used where multiple
configurations have to be available. The `config.sh` script will translate
these templates into real configuration files with a `.out` suffix and their
content will depend on the `.m4` file you called the script with.

Example:

    :::console
    $ ./config.sh netbook.m4

Once the `.out` files generated you can create symlinks to your home folder so
that you can call the script again in order to change your configuration with a
one-line bash command.

You also may need to restart some applications once `.out` files has changed,
like i3 (using its restart shortcut `Mod4+Shift+R`), and calling
`xrdb -merge ~/.Xresources`.
