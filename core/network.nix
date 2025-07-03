{ pkgs, host, options, ... }: {
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    timeServers = options.networking.timeServers.default ++ [ "pool.ntp.org" ];
    nameservers = [ "127.0.0.1" "::1" ];
  };

  services.dnscrypt-proxy2 = {
    enable = true;
    settings.listen_addresses = [ "127.0.0.1:53" "[::1]:53" ];
  };

  services.zapret = {
    enable = true;
    params = [
      "--dpi-desync=fake"
      "--dpi-desync-ttl=8"
    ];
  };

  environment.systemPackages = with pkgs; [
    networkmanagerapplet
  ];
}
