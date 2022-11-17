{
  config,
  pkgs,
  ...
}: {
  security = {
    protectKernelImage = true;
    lockKernelModules = false;
    rtkit.enable = true;
    apparmor = {
      enable = true;
      killUnconfinedConfinables = true;
      packages = [pkgs.apparmor-profiles];
    };

    pam.services = {
      login.enableGnomeKeyring = true;
      swaylock = {
        text = ''
          auth include login
        '';
      };
    };

    sudo = {
      execWheelOnly = true;
      extraConfig = ''
        ALL ALL = (root) NOPASSWD: ${pkgs.systemd}/bin/shutdown
        ALL ALL = (root) NOPASSWD: ${pkgs.systemd}/bin/reboot '';
    };
  };

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        intel-compute-runtime
        intel-media-driver
        vaapiIntel
        vaapiVdpau
        libvdpau-va-gl
        nvidia-vaapi-driver
      ];
    };
    bluetooth.enable = true;
  };
}
