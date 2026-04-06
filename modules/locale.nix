{ ... }:
{
  time.timeZone = "America/Maceio";
  
  i18n.inputMethod.enable = true;
  i18n.inputMethod.type = "ibus";
  i18n.defaultLocale = "pt_BR.UTF-8";

  environment.sessionVariables.GTK_IM_MODULE = "ibus";
  environment.sessionVariables.QT_IM_MODULE = "ibus";
  environment.sessionVariables.XMODIFIERS = "@im=ibus";

  console = {
    font = "Lat2-Terminus16";
    keyMap = "br-abnt2";
    # useXkbConfig = true; # use xkb.options in tty.
  };
}
