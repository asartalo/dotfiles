{ config, pkgs, ... }:

{

  imports = [
    ./programs/sh.nix
    ./programs/neovim.nix
    ./programs/zellij.nix
    # ./programs/alacritty/default.nix
    # ./programs/librewolf.nix
  ];

  # Crashing in nautilus
  xdg.mime.enable = false;

  # Use catpuccin theme https://github.com/catppuccin/nix
  catppuccin = {
    enable = true;
    # flavour = "mocha";
    flavor = "mocha";

    starship.enable = true;
    alacritty.enable = true;
  };

  home = {
    username = "wayne";
    homeDirectory = "/home/wayne";

    # This value determines the home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update home Manager without changing this value. See
    # the home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "23.11";

    sessionVariables = {
      EDITOR = "nvim";
      # ZSH_CUSTOM = "$HOME/.config/oh-my-zsh";
    };

    # Packages that should be installed to the user profile.
    packages = with pkgs; [
      bat # cat replacement written in Rust
      curl
      devenv # reproducible development environments
      eza # ls replacement
      # exercism
      gnupg # gpg
      home-manager
      htop
      # lorri # Easy Nix shell
      lua
      neofetch # show-off OS
      nh # nix helper
      # nix-output-monitor # provides the command nom works just like nix w/ better logs
      ripgrep # recursively searches directories for a regex pattern
      silver-searcher
      skim
      thefuck # fix misstyped commands
      tree
      wget
      which
      yt-dlp
      zi

      # custom
      (pkgs.callPackage ./fonts/fira-code-nf-complete.nix { })
    ];

    file = {
      # ".config/foo/bar.conf".source = ./config/foo/bar.conf
    };
  };

  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true;
      enableBashIntegration = true;
    };

    # basic configuration of git, please change to your own
    git = {
      enable = true;
      userName = "Wayne Duran";
      userEmail = "asartalo@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    # starship - an customizable prompt for any shell
    starship = {
      enable = true;

      # custom settings
      settings = {
        add_newline = true;

        # character = {
        #   success_symbol = 'false';
        # };
	      package.disabled = true;
        aws.disabled = true;
        gcloud.disabled = true;
        line_break.disabled = true;
      };
    };

    # alacritty - a cross-platform, GPU-accelerated terminal emulator
    # alacritty = {
    #   enable = true;

    #   # custom settings
    #   settings = {
    #     env.TERM = "xterm-256color";
    #     font = {
    #       size = 14;
    #       # draw_bold_text_with_bright_colors = true;
    #     };
    #     scrolling.multiplier = 5;
    #     selection.save_to_clipboard = true;
    #   };
    # };

  };
}

