{ host, config, pkgs, ... }:
let
  inherit (import ../../hosts/${host}/variables.nix)
    extraMonitorSettings;
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;

    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = [ "--all" ];
    };

    xwayland.enable = true;

    settings = {
      input = {
        kb_layout = "us";
        kb_options = [
          "grp:win_space_toggle"
        ];
        numlock_by_default = true;
        repeat_delay = 300;
        float_switch_override_focus = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          scroll_factor = 0.7;
        };
      };

      general = {
        "$mod" = "SUPER";
        resize_on_border = true;
      };

      misc = {
        layers_hog_keyboard_focus = true;
        initial_workspace_tracking = 0;
        mouse_move_enables_dpms = true;
        key_press_enables_dpms = true;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        enable_swallow = false;
        enable_anr_dialog = true;
        anr_missed_pings = 20;
      };

      ecosystem = {
        no_update_news = false;
        no_donation_nag = true;
      };

      cursor = {
        sync_gsettings_theme = true;
        no_hardware_cursors = 2;
        enable_hyprcursor = false;
        warp_on_change_workspace = 2;
        no_warps = true;
      };

      render = {
        explicit_sync = 1;
        explicit_sync_kms = 1;
        direct_scanout = 0;
      };

      env = [
        "NIXOS_OZONE_WL, 1"
        "XDG_CURRENT_DESKTOP, Hyprland"
        "XDG_SESSION_TYPE, wayland"
        "XDG_SESSION_DESKTOP, Hyprland"
        "GDK_BACKEND, wayland, x11"
        "CLUTTER_BACKEND, wayland"
        "QT_QPA_PLATFORM=wayland;xcb"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION, 1"
        "QT_AUTO_SCREEN_SCALE_FACTOR, 1"
        "SDL_VIDEODRIVER, wayland"
      ];
    };

    extraConfig = "
      monitor = , preferred, auto, auto
      ${extraMonitorSettings}
    ";
  };
}
