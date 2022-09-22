{ config, pkgs, ... }:

{
  home = {
    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    username = "wayne";
    homeDirectory = "/home/wayne";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "22.05";

    sessionVariables = {
      EDITOR = "nvim";
      ZSH_CUSTOM= "$HOME/.config/oh-my-zsh";
    };

    # Miscellaneous packages (in alphabetical order)
    packages = with pkgs; [
      bat # cat replacement written in Rust
      crystal # Like Ruby but faster and with types
      curl # An old classic
      deno # like node
      # docker # World's #1 container tool
      # docker-compose # Local multi-container Docker environments
      # docker-machine # Docker daemon for macOS
      elixir # OTP with cool syntax
      erlang # OTP with weird syntax
      exa # ls replacement written in Rust
      # graphviz # dot
      go
      gnupg # gpg
      heroku
      htop # Resource monitoring
      # kotlin
      lorri # Easy Nix shell
      # nix-serve
      nodejs # node and npm
      nodePackages.eslint
      neovim
      #prometheus # Monitoring system
      python310 # Have you upgraded yet???
      python310Packages.pip
      python310Packages.pynvim
      sqlite # We want versions > 3.38.5
      thefuck # fix misstyped commands
      wget
      yarn # Node.js package manager
      zellij
    ];

    # Creates ZSH_CUSTOM directory. See `sessionVariables`
    # extraProfileCommands = ''
    #   mkdir -p $HOME/.config/oh-my-zsh
    # '';
  };

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    # programs.erlang.enable = true;
    pandoc.enable = true;

    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      envExtra = ''
        local nixos_version=`which nixos-version`
        if [[ ! -x "$nixos_version" ]]; then
          export NIX_PATH="$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels''${NIX_PATH:+:$NIX_PATH}"
          # echo "non-nixos patches loaded with zsh"
        fi
        export PATH="/usr/local/sbin:$PATH"
        export PATH="$PATH:$HOME/.rvm/bin"
        export PATH=$PATH:/usr/local/go/bin
        export PATH=$PATH:$HOME/go/bin
      '';
      history = {
        size = 102400;
        save = 102400;
        ignoreDups = true;
        expireDuplicatesFirst = true;
      };
      initExtraFirst = ''
        mkdir -p $ZSH_CUSTOM # ensure custom
        if [ -d "$ZSH_CUSTOM/plugins/nix-shell" ]; then
        else
          echo "zsh-nix-shell does not exist. Installing...";
          git clone https://github.com/chisui/zsh-nix-shell.git $ZSH_CUSTOM/plugins/nix-shell
          cd $ZSH_CUSTOM/plugins/nix-shell && git reset --hard "4eb69b044ffab5197dfbf0f5d40e7cdb3d75e222"
          cd $HOME
        fi
        if [ -d "$ZSH_CUSTOM/plugins/nix-zsh-completions" ]; then
        else
          echo "nix-zsh-completions does not exist. Installing....";
          git clone git@github.com:spwhitt/nix-zsh-completions.git $ZSH_CUSTOM/plugins/nix-zsh-completions
          cd $ZSH_CUSTOM/plugins/nix-zsh-completions && git reset --hard "d9f48b9be5d7ef8b0cfb43e08f9dd820d9e125ac"
          cd $HOME
        fi
      '';
      oh-my-zsh = {
        enable = true;
        plugins = ["git" "vi-mode" "nix-shell" "nix-zsh-completions" "thefuck"];
        theme = "robbyrussell";
      };
      profileExtra = ''
      '';
      sessionVariables = {
        TERM="xterm-256color";
        EDITOR="nvim";
        VISUAL="nvim";
      };
      shellAliases = {
        vi = "nvim";
        pbcopy = "xclip -selection clipboard";
        pbpaste = "xclip -selection clipboard -o";
      };
    };
  };
}
