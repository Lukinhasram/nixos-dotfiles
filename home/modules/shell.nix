{ ... }:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    matchBlocks."*" = {
      forwardAgent = false;
      forwardX11 = false;
      hashKnownHosts = true;
      serverAliveInterval = 0;
      serverAliveCountMax = 3;
    };
  };
  programs.bash = {
    enable = true;
    initExtra = ''
      export PS1="\[\e[32m\][\u\[\e[35m\]@\[\e[32m\]\h\e[35m\]:\[\e[34m\]\w\[\e[32m\]]\[\e[1;35m\]\$\[\e[0m\] "
    '';
    shellAliases = {
      btw = "echo I use nixos, btw";
      ll = "ls -lah";
      gs = "git status -sb";
      ga = "git add";
      gc = "git commit";
      v = "nvim";
      ta = "tmux attach";
      nr = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos";
      nfu = "nix flake update";
    };
  };
}
