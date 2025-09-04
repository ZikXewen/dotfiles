{ ... }:
{
  services = {
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        KbdInteractiveAuthentication = false;
      };
    };
    fail2ban = {
      enable = true;
      ignoreIP = [ "192.168.0.0/16" ];
    };
  };
  users.users.data.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKSrzVFdq409L6lUf/J9CobdQPP6PqcN7WNQqJd3gf+1 datas@data"
  ];
}
