{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    kitty
    brightnessctl
    playerctl
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
