{pkgs, ...}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = "set fish_greeting";
    loginShellInit = /*fish*/ ''
      if uwsm check may-start; exec uwsm start hyprland-uwsm.desktop; end
    '';
    shellAliases = {
      lg = "lazygit";
      dsp = "docker system prune -a --volumes -f";
      dcd = "docker compose down";
      dcu = "docker compose up --detach";
      dcub = "dcu --build";
      dcdev = "infisical run --env=dev -- docker compose up --build -d";
      dcprod = "infisical run --env=prod -- docker compose up -d";
      ff = "fastfetch";
      ls = "eza";
      ll = "eza -l";
      la = "eza -alh";
      nixd = "nix develop -c fish";
      ox = "oxker --host $DOCKER_HOST";
      tree = "eza -T";
    };
  };
  documentation.man.generateCaches = false; # programs.fish.enable enables this
  users.users.data.shell = pkgs.fish;
}
