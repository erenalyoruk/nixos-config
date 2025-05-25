{ ... }: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod, Return, exec, alacritty"
      "$mod, R, exec, rofi-launcher"
      "$mod, F, fullscreen,"
      "$mod, Q, killactive,"
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, k, movefocus, u"
      "$mod, j, movefocus, d"
      
      "$mod SHIFT, I, togglesplit,"
      "$mod SHIFT, C, exit,"
      "$mod SHIFT, h, movewindow, l"
      "$mod SHIFT, l, movewindow, r"
      "$mod SHIFT, k, movewindow, u"
      "$mod SHIFT, j, movewindow, d"
      
      "$mod ALT, h, swapwindow, l"
      "$mod ALT, l, swapwindow, r"
      "$mod ALT, k, swapwindow, u"
      "$mod ALT, j, swapwindow, d"

      "ALT, Tab, cyclenext,"
      "ALT, Tab, bringactivetotop"

      ",XF86AudioRaiseVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ -l 1.0"
      ",XF86AudioLowerVolume,exec,wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- -l 1.0"
      " ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioPlay, exec, playerctl play-pause"
      ",XF86AudioPause, exec, playerctl play-pause"
      ",XF86AudioNext, exec, playerctl next"
      ",XF86AudioPrev, exec, playerctl previous"
      ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
      ",XF86MonBrightnessUp,exec,brightnessctl set +5%"
    ];

    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
