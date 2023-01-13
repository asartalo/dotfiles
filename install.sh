#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles # dotfiles directory
files="vim talon"    # list of files/folders to symlink in homedir
configs="nvim nix tmux zellij alacritty"

for file in $files; do
  link="$HOME/.$file"
  if [ -e $link ]; then
    echo "$link exists. Skipping creating symlink."
  else
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
  fi
done

[[ ! -a "$HOME/.config" ]] && mkdir "$HOME/.config" # Make .config directory if it does not exist
for confdir in $configs; do
  link="$HOME/.config/$confdir"
  if [ -e $link ]; then
    echo "$link exists. Skipping creating symlink."
  else
    echo "Creating symlink $link"
    ln -s $dir/config/$confdir $link
  fi
done

echo "Pulling git submodules"
git submodule update --init --recursive
