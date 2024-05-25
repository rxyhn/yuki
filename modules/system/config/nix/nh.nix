{
  environment.variables.FLAKE = "/home/rxyhn/Documents/code/yuki";

  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 30d";
    };
  };
}
