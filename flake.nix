 {
  description = "Kris's darwin system";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }: {
    darwinConfigurations."Kriss-MacBook-Air-2" = nix-darwin.lib.darwinSystem {
      modules = [ ./configuration.nix ];
    };
  };
} 
