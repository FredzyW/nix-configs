{ pkgs, ...}:
{
	environment.systemPackages = with pkgs; [
		vial
		via
	];
}
