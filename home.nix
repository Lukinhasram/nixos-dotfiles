{ ... }:
{
  imports = [
    ./home/modules/user.nix
    ./home/modules/git.nix
    ./home/modules/tmux.nix
    ./home/modules/shell.nix
    ./home/modules/xdg.nix
    ./home/modules/packages.nix
  ];
}
