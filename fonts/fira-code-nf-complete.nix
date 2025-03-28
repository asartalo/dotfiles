{
  lib,
  stdenv
}:

stdenv.mkDerivation rec {
  pname = "fira-code-nf-complete";
  version = "1";

  # fontdir = ./fira-code-nf-complete;

  # main = $fontdir/main/\*.ttf;

  # win = $fontdir/win-compat/\*.ttf;
  # 
  # mono = $fontdir/mono/\*.tff;

  # retina = $fontdir/retina/\*.ttf;

  # retina-win = $fontdir/retina-win-compat/\*.ttf;

  src = ./.;

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    mkdir -p $out/share/fonts/truetype
    cp $src/fira-code-nf-complete/main/*.ttf $out/share/fonts/truetype;
  '';

  meta = {
    description = "Custom FiraCode Nerd Font with Italics";
    homepage = "https://github.com/asartalo/dotfiles";
    license = lib.licenses.ofl;
  };
}
