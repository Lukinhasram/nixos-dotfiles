{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  createSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    nvim = "nvim";
    tmux = "tmux";
    niri = "niri";
    kitty = "kitty";
    yazi = "yazi";
    fuzzel = "fuzzel";
    vesktop = "vesktop";
  };
in
{
  xdg.configFile = builtins.mapAttrs
    (name: subpath: {
      source = createSymlink "${dotfiles}/${subpath}";
      recursive = true;
    })
    configs;
}
