{ pkgs, ... }: {
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
      duf
      eza
      ffmpeg
      greetd.tuigreet
      htop
      ripgrep
      pkg-config
      unzip
      vim
      wget
      wl-clipboard
      curl
    ];
}
