{ pkgs, inputs, username, host, profile, ... }:
let
  inherit (import ../hosts/${host}/variables.nix)
    gitUsername;
in
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "bak";
    extraSpecialArgs = { inherit inputs username host profile; };
    users.${username} = {
      imports = [ ./../home ];
      home = {
        username = "${username}";
	      homeDirectory = "/home/${username}";
	      stateVersion = "24.11";
      };
    };
  };

  users.mutableUsers = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "${gitUsername}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
}
