{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/desktop.nix
    ./modules/audio.nix
    ./modules/users.nix
    ./modules/packages.nix
    ./modules/nix.nix
  ];
  
  system.stateVersion = "25.11"; 
}

