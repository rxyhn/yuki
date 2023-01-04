{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    curl
    gcc
    git
    hddtemp
    jq
    lm_sensors
    lz4
    ntfs3g
    nvme-cli
    p7zip
    pciutils
    unrar
    unzip
    wget
    zip
  ];
}