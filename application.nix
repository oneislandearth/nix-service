with (import <nixpkgs> {});
rec {
  application = mkYarnPackage {
    name = "application";
    src = builtins.filterSource
      (path: type: !(type == "directory" && baseNameOf path == "node_modules" && baseNameOf path == "dist"))
      ./.;
    buildInputs = [
      reconstruct
    ];
    yarnNix = ./yarn.nix;
    yarnLock = ./yarn.lock;
    # packageJSON = ./package.json;
  };
}