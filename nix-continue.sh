#!/bin/bash
############################
# continuation installation
############################

if [[ $(which nix-channel) ]]; then
  # home-manager
  nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
  nix-channel --update
  nix-shell '<home-manager>' -A install
fi

DETECTED_OS=$(./detect_os.sh)
# Run nix home-manager
if [[ $(home-manager switch -- --flake .) ]]; then
  ZSH_PATH=$(which zsh)
  # Switch to zsh
  if [[ $DETECTED_OS == "debian" ]]; then
    ETCSHELLS="/etc/shells"
    if ! sudo grep -qxF "$ZSH_PATH" "$ETCSHELLS"; then # check if it's not appended already
      echo "$ZSH_PATH" | sudo tee -a "$ETCSHELLS" > /dev/null
      echo "Added zsh path to $ETCSHELLS"
    fi
  fi
  sudo chsh -s "$ZSH_PATH" $USER
  echo "\nDONE.\nYou should logout and login again in order to see your shiny new zsh shell."
  echo "Also, install alacritty terminal for more fun."
fi
