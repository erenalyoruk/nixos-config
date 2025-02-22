{ host, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    gitUsername
    gitEmail
    gitEditor;
in
{
  programs.git = {
    enable = true;
    userName = "${gitUsername}";
    userEmail = "${gitEmail}";
    extraConfig = {
      init.defaultBranch = "main";
      core.editor = "${gitEditor}";
    };
  };
}
