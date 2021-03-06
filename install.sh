#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles                    # dotfiles directory
files="vim" # list of files/folders to symlink in homedir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

[[ ! -a "$HOME/.config" ]] && mkdir "$HOME/.config" # Make .config directory if it does not exist
ln -s $dir/config/nvim ~/.config/nvim
ln -s $dir/talon ~/.talon

echo "Pulling git submodules"
git submodule update --init --recursive
