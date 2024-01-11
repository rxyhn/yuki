{
  self,
  inputs,
  default,
  ...
}: let
  module_args._module.args = {
    inherit default inputs self;
  };
in {
  imports = [
    ./nixos
  ];

  _module.args = {
    inherit module_args;

    sharedModules = [
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
        };
      }

      inputs.home-manager.nixosModule
      inputs.hyprland.nixosModules.default
      inputs.nh.nixosModules.default
      module_args
    ];
  };
}
