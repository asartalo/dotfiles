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
    };

    # Miscellaneous packages (in alphabetical order)
    packages = with pkgs; [
      bat # cat replacement written in Rust
      crystal # Like Ruby but faster and with types
      curl # An old classic
      # docker # World's #1 container tool
      # docker-compose # Local multi-container Docker environments
      # docker-machine # Docker daemon for macOS
      elixir # OTP with cool syntax
      erlang # OTP with weird syntax
      exa # ls replacement written in Rust
      # graphviz # dot
      gnupg # gpg
      heroku
      htop # Resource monitoring
      # kotlin
      lorri # Easy Nix shell
      # nix-serve
      nodejs # node and npm
      nodePackages.eslint
      #prometheus # Monitoring system
      sqlite # We want versions > 3.38.5
      python310 # Have you upgraded yet???
      python310Packages.pip
      python310Packages.pynvim
      wget
      # yarn # Node.js package manager
      zellij
    ];
  };

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;

    neovim.enable = true;
    # programs.erlang.enable = true;
    pandoc.enable = true;
  };
}
