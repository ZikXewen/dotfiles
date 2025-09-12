{ ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = "source ${./interactive.fish}";
    loginShellInit = "if test -z \"$DISPLAY\" -a \"$XDG_VTNR\" = 1; hyprland; end";
  };
  documentation.man.generateCaches = false; # programs.fish.enable enables this
}
