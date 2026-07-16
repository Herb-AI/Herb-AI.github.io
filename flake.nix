{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        gems = pkgs.bundlerEnv {
          name = "herb-ai-website";
          inherit (pkgs) ruby;
          gemdir = ./.;
        };
      in {
        default = gems;
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            # gems
            # gems.wrappedRuby
            bundix
            # imagemagick
            # (python3.withPackages (python-pkgs:
            #   with python-pkgs; [
            #     # jupyter
            #   ]))
          ];
          # JEKYLL_ENV = "production";
        };
      }
    );
}
