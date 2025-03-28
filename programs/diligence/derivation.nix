{
  lib,
  fetchFromGitHub,
  fetchurl,
  flutter,
  makeDesktopItem,
  stdenv,


  targetFlutterPlatform ? "linux"
}:

let
  sqlite3DepSrc = fetchurl {
    url = "https://sqlite.org/2024/sqlite-autoconf-3450100.tar.gz";
    sha256 = "02lssjiwyvsrr80rp62n0msds0f7hq5y4lbni74k4nbs3f22g76d";
  };

  sqlite3FlutterLibs = { version, src, ...}: stdenv.mkDerivation rec {
    pname = "sqlite3_flutter_libs";
    inherit version src;
    inherit (src) passthru;

    installPhase = ''
      runHook preInstall

      cp -r "$src" "$out"
      _replace() {
      out  URL=https://sqlite.org/2024/sqlite-autoconf-3450100.tar.gz
        if cat "$out/linux/CMakeLists.txt" | grep "$URL" >/dev/null 2>/dev/null; then
          substituteInPlace "$out/linux/CMakeLists.txt" --replace-fail "$URL" "file://$1"
        else
          return 2
        fi
      }
      _replace "${sqlite3DepSrc}" || (echo "do not know what to do with sqlite3")

      runHook postInstall
    '';

    meta.sourceProvenance = [ lib.sourceTypes.binaryBytecode ];
  };
in

flutter.buildFlutterApplication rec {
  pname = "diligence";
  version = "0.1.6";

  src = fetchFromGitHub {
    owner = "asartalo";
    repo = "diligence";
    rev = "refs/tags/${version}";
    hash = "sha256-bm44BAbvS+4Q7BQRf272XbPBnN8HUN6RcQzcgeVVNq4=";
  };

  pubspecLock = lib.importJSON ./pubspec.lock.json;

  gitHashes = {
    flutter_dotenv = "sha256-XjyMyWLTthQ9fAcv3oB/deK5xIiP2kMsHvS+iuPclao=";
  };

  inherit targetFlutterPlatform;

  nativeBuildInputs = [];

  customSourceBuilders = {
    "sqlite3_flutter_libs" = sqlite3FlutterLibs;
  };

  desktopItem = makeDesktopItem {
    name = "Diligence";
    exec = "diligence";
    icon = "diligence";
    desktopName = "Diligence";
    genericName = "A tree-based task management app";
  };

  # postInstall = ''
  #   
  # '';

  patches = [
    ./dotenv.patch
  ];

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
