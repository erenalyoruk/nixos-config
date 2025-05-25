{ pkgs, config, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    loader.systemd-boot.enable = true;
    loader.efi.efiSysMountPoint = "/efi";
    loader.efi.canTouchEfiVariables = true;
    plymouth.enable = true;
  };
}
