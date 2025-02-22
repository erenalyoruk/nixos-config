{ pkgs, username, host, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    keyboardLayout;
in
{
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    openssh.enable = true;

    xserver = {
      enable = false;
      xkb = {
        layout = "${keyboardLayout}";
	variant = "";
      };
    };

    greetd = {
      enable = true;
      vt = 3;
      settings = {
        default_session = {
          user = username;
	  command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
	};
      };
    };

    smartd = {
      enable = true;
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };
  
  security = {
    rtkit.enable = true;
    polkit.enable = true;
  };
}
