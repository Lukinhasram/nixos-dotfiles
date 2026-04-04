{ config, pkgs, inputs, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    nvim  = "nvim";
    tmux  = "tmux";
    niri  = "niri";
    kitty = "kitty";
    yazi  = "yazi";
  };
in

{
  home.username = "lucas";
  home.homeDirectory = "/home/lucas";
  home.stateVersion = "25.11";
  programs.git = { 
    enable = true; 
    extraConfig = {
      user.name = "Lukinhasram"; 
      user.email = "lucas.ramos@arapiraca.ufal.br";
      init.defaultBranch = "main";
    };
  };
  programs.ssh.enable = true;
  programs.bash = {
    enable = true;
    initExtra = ''
      export PS1="\[\e[32m\][\u\[\e[35m\]@\[\e[32m\]\h\e[35m\]:\[\e[34m\]\w\[\e[32m\]]\[\e[1;35m\]\$\[\e[0m\] "
    '';
    shellAliases = {
      btw = "echo I use nixos, btw";
      ll  = "ls -lah";
      gs  = "git status -sb";
      ga  = "git add";
      gc  = "git commit";
      v   = "nvim";
      ta  = "tmux attach";
      nr  = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos";
      nfu = "nix flake update";
    };
  };
  
  xdg.configFile = builtins.mapAttrs 
    (name: subpath: {
      source = create_symlink "${dotfiles}/${subpath}";
      recursive = true;
    })
    configs;

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
    gh
    inputs.nixpkgs-unstable.legacyPackages.${pkgs.system}.zotero
  ];
}
