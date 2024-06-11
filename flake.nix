{
  description = "Evan's Nix System Configuration";

  inputs = {
    darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = {
    darwin,
    home-manager,
    ...
  } @ inputs: {

    darwinConfigurations = {
      "Palolo-MBP" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./nix/darwin
          home-manager.darwinModules.home-manager
          {
            _module.args = { inherit inputs; };
            home-manager = {
              users.russellsherman = {
                home = {
                  stateVersion = "23.11";
                  username = "russellsherman";
                  homeDirectory = "/Users/russellsherman";
                };
                programs.home-manager.enable = true;
                xdg.enable = true;
                imports = [./nix/home];
              };
            };
            users.users.russellsherman.home = "/Users/russellsherman";
          }
        ];
      };
      coderonin = darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        modules = [
          ./nix/darwin
          home-manager.darwinModules.home-manager
          {
            _module.args = { inherit inputs; };
            home-manager = {
              users.russellsherman = {
                home = {
                  stateVersion = "23.11";
                  username = "russellsherman";
                  homeDirectory = "/Users/russellsherman";
                };
                programs.home-manager.enable = true;
                xdg.enable = true;
                imports = [./nix/home];
              };
            };
            users.users.russellsherman.home = "/Users/russellsherman";
          }
        ];
      };
    };
  };
}
