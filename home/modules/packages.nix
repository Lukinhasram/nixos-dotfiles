{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    tmux
    ripgrep
    nil
    nixpkgs-fmt
    nodejs
    gcc
    fuzzel
    swaybg
    xwayland-satellite
    gthumb
    fastfetch
    opencode
    lua-language-server
    yazi
    fzf
    btop
    unstable.zotero
    unstable.obsidian
    unstable.vesktop
  ];
}
