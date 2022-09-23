#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles # dotfiles directory
files="vim"    # list of files/folders to symlink in homedir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

[[ ! -a "$HOME/.config" ]] && mkdir "$HOME/.config" # Make .config directory if it does not exist
ln -s $dir/config/nvim $HOME/.config/nvim
ln -s $dir/config/nix $HOME/.config/nix
# ln -s $dir/config/nixpkgs $HOME/.config/nixpkgs
ln -s $dir/talon $HOME/.talon

echo "Pulling git submodules"
git submodule update --init --recursive
