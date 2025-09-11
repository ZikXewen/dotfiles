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
        ./configuration.nix
        ./hardware-configuration.nix
        nvf.nixosModules.default
        ./nvf.nix
        ./ssh.nix
        ./starship.nix
        ./zerotier.nix
      ];
    };
  };
}
