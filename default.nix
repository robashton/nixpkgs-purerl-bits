self: super:
{
    ashton = (super.ashton or {}) // {
      spago-0-12-1-0 = super.callPackage ./tools/spago/0.12.1.0.nix {};
      dhall-json-1-5-0 = super.callPackage ./tools/dhall/dhall-json-1-5-0.nix {};
      purescript-0-13-5 = super.callPackage ./tools/purescript/0.13.5.nix {};
    };
}
