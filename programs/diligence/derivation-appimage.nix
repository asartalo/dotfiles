{

  lib,
  appimageTools,
  fetchurl,
  stdenv,

}:

let
  appName = "diligence";
  pname = "${appName}-appimage";
  version = "0.1.6";
  name = "${pname}-${version}";

  src = fetchurl {
    url = "https://github.com/asartalo/diligence/releases/download/${version}/Diligence-x64.AppImage";
    hash = "sha256-jjrYFqFaNN4aKy1jy75sMYnhCmd+Au4cJBFhLIsr8Is=";
  };

  appimageContents = appimageTools.extractType2 { inherit name src; };
in

appimageTools.wrapType2 rec {
  inherit name src;

  extraPkgs = pkgs: with pkgs; [ libepoxy ];

  extraInstallCommands = ''
    mv $out/bin/${name} $out/bin/${pname}
    install -m 444 -D ${appimageContents}/Diligence.desktop $out/share/applications/${pname}.desktop
    install -m 444 -D ${appimageContents}/diligence.png $out/share/icons/hicolor/512x512/apps/${pname}.png
  '';

  meta = with lib; {
    mainProgram = "diligence";
    description = "A tree-based task management app";
    homepage = "https://github.com/asartalo/diligence";
    license = licenses.gpl3Only;
    maintainers = [{
      name = "Wayne Duran";
      email = "asartalo@gmail.com";
      github = "asartalo";
      githubId = 310708;
    }];
    platforms = platforms.linux;
  };
}
