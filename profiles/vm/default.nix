{ host, pkgs, ... }: {
  imports = [
    ../../hosts/${host}
    ../../drivers
    ../../core
  ];

  vm.guest-services.enable = true;
}
