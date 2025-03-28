#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles # dotfiles directory
files="vim talon"    # list of files/folders to symlink in homedir
configs="nvim nix tmux zellij alacritty starship.toml"

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

echo "Detecting Operating System..."
DETECTED_OS=$(./detect_os.sh)
if [[ $DETECTED_OS == "ubuntu" ]] || [[ $DETECTED_OS == "ubuntu" ]]; then
  # Install compilers
  echo "Detected: $DETECTED_OS"
  echo "We are on an  system. Installing libs..."
  sudo apt update
  sudo apt install build-essential cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 libyaml-dev libpq-dev
fi

# Install rust and other tools
if ! [[ $(which rustup) ]]; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  export PATH=$PATH:$HOME/.cargo/bin
fi

# Install starship prompt if it's not already
# NOTE: This is already handled by nix
# if ! [[ $(which starship) ]]; then
#   cargo install starship
# fi

# Install nix
if ! [[ $(which nix) ]]; then
  if [[ $(grep Microsoft /proc/version) ]]; then
    # wsl
    sh <(curl -L https://nixos.org/nix/install) --no-daemon
  else
    sh <(curl -L https://nixos.org/nix/install) --daemon
  fi
fi

# For better vim features
echo "VIM: Pulling git submodules"
git submodule update --init --recursive

# Run nix
if [[ $(home-manager switch -- --flake .) ]]; then
  # Switch to zsh
  sudo chsh -s $(which zsh) $USER
  echo "\nDONE.\nYou should logout and login again in order to see your shiny new zsh shell."
  echo "Also, install alacritty terminal for more fun."
fi
