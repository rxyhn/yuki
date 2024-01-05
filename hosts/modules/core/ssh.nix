{
  pkgs,
  lib,
  ...
}: {
  environment.loginShellInit = ''
    dbus-update-activation-environment --systemd DISPLAY
    eval $(${pkgs.gnome.gnome-keyring}/bin/gnome-keyring-daemon --start --components=ssh,secrets)
    eval $(${pkgs.openssh}/bin/ssh-agent)
  '';

  programs.ssh.startAgent = true;
  services.openssh.enable = true;
}
