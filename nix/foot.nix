{pkgs, ...}: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "FiraCode Nerd Font:size=16";
        pad = "16x10 center";
        bold-text-in-bright = "no";
      };
      colors.alpha = 0.8;
    };
  };
  fonts.packages = [pkgs.nerd-fonts.fira-code];
}
