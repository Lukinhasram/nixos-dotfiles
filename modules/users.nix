{ pkgs, ... }:
{
  users.users.lucas = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
  };
}
