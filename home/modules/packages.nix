{ pkgs, ... }:
let
  tock = pkgs.buildGo126Module rec {
    pname = "tock";
    version = "1.9.2";

    src = pkgs.fetchFromGitHub {
      owner = "kriuchkov";
      repo = "tock";
      rev = "v${version}";
      hash = "sha256-ufpp05HtZb4Dq57qkIGBn40nx2lyjpYsxmiR6DkRb7s=";
    };

    vendorHash = "sha256-o31xoMo70pnvlJV+Aelvu9smKfdaJRurIdJ2+0XlSIQ=";
  };
in {
  home.packages = with pkgs; [
    neovim
#tmux
    ripgrep
    jq
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
    libnotify
    spotify
    unstable.zotero
    unstable.obsidian
    unstable.vesktop
    tock
  ];
}
