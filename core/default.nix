{ inputs, ... }: {
  imports = [
    ./boot.nix
    ./fonts.nix
    ./hardware.nix
    ./greetd.nix
    ./network.nix
    ./packages.nix
    ./user.nix
    ./services.nix
    ./stylix.nix
    ./steam.nix
    ./system.nix
    ./virtualisation.nix
    inputs.stylix.nixosModules.stylix
  ];
}
