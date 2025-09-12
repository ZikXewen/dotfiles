{ ... }:
{
  programs.git = {
    enable = true;
    config = {
      user = {
        name = "ZikXewen";
        email = "datasup12@gmail.com";
      };
      init.defaultBranch = "master";
      "url \"git@github.com:\"".insteadOf = "https://github.com/";
    };
  };
}
