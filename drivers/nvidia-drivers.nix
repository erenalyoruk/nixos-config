{ lib, pkgs, config, ... }:
with lib;
let
  cfg = config.drivers.nvidia;
in
{
  options.drivers.nvidia = {
    enable = mkEnableOption "Enable Nvidia Drivers";
  };

  config = mkIf cfg.enable {
    hardware.graphics = {
      enable = true;
      extraPackages = with pkgs; [
        nvidia-vaapi-driver
      ];
    };

    hardware.nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      open = true;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };
}
