{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
    systemd.enable = true;
  };

  systemd.user.targets.hyrpland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];
}
