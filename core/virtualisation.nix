{ pkgs, ... }: {
  virtualisation = {
    libvirtd.enable = true;

    docker = {
      enable = true;
      storageDriver = "btrfs";
    };
  };
}
