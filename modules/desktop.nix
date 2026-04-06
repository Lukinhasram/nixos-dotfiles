{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    windowManager.qtile.enable = true;
    xkb.layout = "br";
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-gnome 
      pkgs.xdg-desktop-portal-gtk 
    ];
    config = {
      niri.default = [ "gnome" "gtk" ];
    };
  };

  services.displayManager.ly.enable = true;

  # Make electron apps use native wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.niri = {
    enable = true;
    useNautilus = false;
  };

  services.libinput.enable = true;
  services.upower.enable = true;
  services.udisks2.enable = true;

  programs.firefox.enable = true;
}
