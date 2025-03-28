{ config, pkgs, ... }:


let
  nixGl = import ../../utils/nixglwrap.nix { inherit pkgs config; };
in {

  home = {
    file = {
      # ".config/foo/bar.conf".source = ./config/foo/bar.conf
    };
  };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;

    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 14;
        # draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };

    package = (nixGl pkgs.alacritty);

    catppuccin.enable = true;
  };
}

