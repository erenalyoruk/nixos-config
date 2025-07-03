{ profile, ... }: {
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    openssh.enable = true;
    blueman.enable = true;
    gnome.gnome-keyring.enable = true;
    fwupd.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
    };

    smartd = {
      enable = true;
      autodetect = true;
    };
  };

  security.rtkit.enable = true;
}
