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
      core = {
        editor = "neovim";
      };

      init = {
        defaultBranch = "main";
      };
    };
  };
}
