{
  inputs = {
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
      in {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            ruby
            imagemagick
            (python3.withPackages (python-pkgs:
              with python-pkgs; [
                # select Python packages here
                jupyter
              ]))
            jekyll
            bundler
          ];
          JEKYLL_ENV = "production";
        };
      }
    );
}
