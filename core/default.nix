{ inputs, ... }: {
  imports = [
    ./boot.nix
    ./fonts.nix
    ./hardware.nix
    ./network.nix
    ./user.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    inputs.stylix.nixosModules.stylix
  ];
}
