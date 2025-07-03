{
  description = "erenalyoruk's nixOS configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    stylix.url = "github:nix-community/stylix/release-25.05";
  };

  outputs = { nixpkgs, ... } @ inputs:
  let
    system = "x86_64-linux";
    host = "victus";
    profile = "nvidia-prime";
    username = "eren";
  in
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit host;
	        inherit profile;
          inherit username;
        };
        modules = [
          ./profiles/nvidia
          ./hosts/${host}
          ./core
        ];
      };
      victus = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit inputs;
          inherit host;
	        inherit profile;
          inherit username;
        };
        modules = [
          ./profiles/nvidia-prime
          ./hosts/${host}
          ./core
        ];
      };
    };
  };
}
