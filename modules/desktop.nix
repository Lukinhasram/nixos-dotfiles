{ ... }:
{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    windowManager.qtile.enable = true;
    xkb.layout = "br";
  };

  services.displayManager.ly.enable = true;

  # Make electron apps use native wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.niri.enable = true;

  services.libinput.enable = true;
  services.upower.enable = true;

  programs.firefox.enable = true;
}
