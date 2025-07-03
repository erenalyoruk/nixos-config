{ pkgs, host, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    gitUsername
    gitEmail;
in
{
  programs.git = {
    enable = true;
    package = pkgs.git;
    userName = "${gitUsername}";
    userEmail = "${gitEmail}";

    lfs = {
      enable = true;
      skipSmudge = true;
    };

    extraConfig = {
      push.default = "simple";
      merge.conflictStyle = "diff3";

      log = {
        decorate = "full";
        date = "iso";
      };

      core = {
        editor = "neovim";
      };

      init = {
        defaultBranch = "main";
      };
    };
  };
}
