# MicroJoe's dotfiles

Includes configuration for the following programs:

 * (g)vim
 * i3/i3status
 * dunst
 * zsh
 * git
 * XDG directory names in $HOME
 * urxvt (not used anymore)
 * fbterm (not used anymore)

You are encouraged to clone this repository and adapt it to your own needs!

## Overview

This repository contains both raw configuration files and *templates*-based
configuration files.

## Installing

You can use the two provided helper scripts `config.sh` and `install.sh` in
order to boostrap the dotfiles system on your computer.

### Generating template-based configuration files

These template files are marked with a `.in` suffix and are used where multiple
configurations have to be available. The `config.sh` script will translate
these templates into real configuration files with a `.out` suffix and their
content will depend on the `.m4` file you called the script with.

Example of generation for the netbook configuration:

    $ ./config.sh netbook.m4

Once all the `.out` files are generated you can create symlinks to your home
folder so that you can call the script again in order to change your
configuration with a one-line bash command.

You also may need to restart some applications once `.out` files has changed,
like i3 (using its restart shortcut `Mod4+Shift+R`), and calling
`xrdb -merge ~/.Xresources`.

### Creating symlinks to files

When the template-based configuration files have been generated, you can create
symlinks for all the configuration files you want to use. The `install.sh`
script is here to help creating symlinks.

Open it and comment out any symlink that you do not want and then call the
install script:

    $ ./install.sh

It is important to generate the template-based configuration files first (even
if some of them are not used) because the symlink creation may fail otherwise.
