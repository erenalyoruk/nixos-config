{inputs, ...}: {
  imports = [
    ./boot.nix
    ./fonts.nix
    ./hardware.nix
    ./network.nix
    ./packages.nix
    ./user.nix
    ./services.nix
    ./system.nix
    inputs.stylix.nixosModules.stylix
  ];
}
