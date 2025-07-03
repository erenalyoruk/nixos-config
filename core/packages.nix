{ pkgs, ... }: {
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    ffmpeg
    htop
    killall
    libnotify
    lshw
    wget
    curl
  ];
}
