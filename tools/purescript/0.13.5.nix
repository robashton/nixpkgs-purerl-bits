{ stdenv
, pkgs
, fetchurl
}:

pkgs.purescript.overrideAttrs (old: rec {
  version = "0.13.5";
  src = if stdenv.isDarwin
        then
        fetchurl {
          url = "https://github.com/purescript/purescript/releases/download/v${version}/macos.tar.gz";
          sha256 = "19bb50m0cd738r353blgy21d842b3yj58xfbplk7bz59jawj9lym";
        }
        else
        fetchurl {
          url = "https://github.com/purescript/purescript/releases/download/v${version}/linux64.tar.gz";
          sha256 = "016wvwypgb4859f0n1lqsqv9a8cca2y8g7d6ffvzx6rncd115gxi";
        };
})

