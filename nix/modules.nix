with (import <nixpkgs> {});
rec {
  application = mkYarnPackage {
    name = "modules";
    src = builtins.filterSource
      (path: type: !(type == "directory" && (baseNameOf path == "node_modules" || baseNameOf path == ".nix")))
      ./.;
    yarnNix = ./yarn.nix;
    yarnLock = ./yarn.lock;
    packageJSON = ./package.json;
  };
}