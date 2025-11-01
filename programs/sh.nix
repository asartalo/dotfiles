{ config, lib, pkgs, ... }:

{
  # zsh terminal
  programs.zsh = {
    enable = lib.mkDefault true;

    autosuggestion = {
      enable = true;
    };

    enableCompletion = true;

    # Extra commands that should be added to zshenv
    envExtra = ''
export PATH=$PATH:$HOME/bin
export PATH=/nix/var/nix/profiles/default/bin:$PATH
export PATH=$HOME/.nix-profile/bin:$PATH
    '';

    history = {
      size = 102400;
      save = 102400
      ignoreDups = true;
      expireDuplicatesFirst = true;
    };

    # Extra commands that should be added to top of .zshrc
    initExtraFirst = ''
    '';

    # Extra commands that should be added to the end of .zshrc
    initExtra = ''
if [ -e $HOME/.zshrc_home ]; then
  source $HOME/.zshrc_home
fi
    '';

    profileExtra = ''
# Nix
if [ -e '/etc/profile.d/nix.sh' ]; then
  . '/etc/profile.d/nix.sh'
fi
# End Nix

if [ -e /etc/profile ]; then
	emulate sh -c 'source /etc/profile'
fi
    '';

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "vi-mode"];
      theme = "robbyrussell";
    };

    sessionVariables = {
      TERM="xterm-256color";
      EDITOR="nvim";
      SUDO_EDITOR="nvim";
      VISUAL="nvim";
    };

    shellAliases = {
      vi = "nvim";
      wtf = "fuck";
      zel = "zellij";
      # The following are emulating MacOS's copy paste commands on linux.
      # Better move this to platform specific
      # pbcopy = "xclip -selection clipboard";
      # pbpaste = "xclip -selection clipboard -o";
    };
  };

  home.packages = with pkgs; [
    # zsh plugins:
    zsh-history
    zsh-nix-shell
    zsh-git-prompt
    zsh-completions
    zsh-you-should-use
    zsh-vi-mode
  ];
}
