_: {
  imports = [
    ./hardware.nix
  ];

  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "noatime" "compress=zstd" ];
    "/swap".options = [ "noatime" ];
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];
}
