_: {
  imports = [
    ./hardware.nix
  ];

  fileSystems = {
    "/".options = [ "compress=zstd" "noatime" "ssd" "space_cache=v2" ];
    "/home".options = [ "compress=zstd" "noatime" "ssd" "space_cache=v2" ];
    "/nix".options = [ "compress=zstd" "noatime" "ssd" "space_cache=v2" ];
    "/data".options = [ "compress=zstd" "noatime" "ssd" "space_cache=v2" ];
    "/swap".options = [ "noatime" "ssd" "space_cache=v2" ];
  };

  swapDevices = [ { device = "/swap/swapfile"; } ];

  environment.variables = {
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    LIBVA_DRIVER_NAME = "nvidia";
    NVD_BACKEND = "direct";
  };
}
