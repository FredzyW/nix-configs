{ pkgs, lib, ... }:
{
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      allowUnfree = true;
	    permittedInsecurePackages = [
        "electron-25.9.0"
      ];
    };
  };
}
