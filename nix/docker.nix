{ ... }:
{
  users.users.data.extraGroups = [ "docker" ];
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
    autoPrune = {
      enable = true;
      flags = [ "-a" "--volumes" ];
      dates = "daily";
    };
  };
}
