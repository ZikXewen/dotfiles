{
  description = "NixOS Config Flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, nvf, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [
        nvf.nixosModules.default
        ./nvf.nix
        ./configuration.nix
        ./hardware-configuration.nix
        ./starship.nix
      ];
    };
  };
}
