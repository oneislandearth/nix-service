with (import <nixpkgs> {}); 
rec {
  shell = mkShell {
    name = "environment";                   
    buildInputs = [   
      curl 
      jq           
      deno
      yarn 
      yarn2nix                                       
    ];                                                                    
    shellHook = ''
      sh <(curl -L -s  -H 'Cache-Control: no-cache, no-store' "https://raw.githubusercontent.com/oneislandearth/nix-service/main/bash/shell?ts=$(date +%s)")
      exit
    '';  
  };
}