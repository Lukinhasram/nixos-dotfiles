{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Lukinhasram";
      user.email = "lucas.ramos@arapiraca.ufal.br";
      init.defaultBranch = "main";
    };
  };
}
