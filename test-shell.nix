let
  erlangReleases = builtins.fetchTarball https://github.com/nixerl/nixpkgs-nixerl/archive/v1.0.2-devel.tar.gz;

  nixpkgs =
    import <nixpkgs> {
      overlays = [
        (import erlangReleases)
        (import ./.)
      ];
    };

in

with nixpkgs;

mkShell {
  buildInputs = with pkgs; [
    nixerl.erlang-22-1-8.erlang
    nixerl.erlang-22-1-8.rebar3

    ashton.purescript-0-13-5
    ashton.spago-0-12-1-0
    ashton.dhall-json-1-5-0
  ];
}
