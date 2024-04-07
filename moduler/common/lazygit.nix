
{ pkgs, lib, ... }:
{
  programs.lazygit = {
		enable = true;
		settings = {
		  gui = {
			  theme = {
				  activeBorderColor = [ "#a6da95" "bold" ];
				  inactiveBorderColor = [ "#a5adcb" ];
				  optionsTextColor = [ "#8aadf4" ];
				  selectedLineBgColor = [ "#363a4f" ];
				  cherryPickedCommitBgColor = [ "#494d64" ];
				  cherryPickedCommitFgColor = [ "#a6da95" ];
				  unstagedChangesColor = [ "#ed8796" ];
				  defaultFgColor = [ "#cad3f5" ];
				  searchingActiveBorderColor = [ "#eed49f" ];
				};

				authorColors = {
				  "*" = "#b7bdf8";
				};
			showRandomTip = false;
			showBottomLine = false;
			sidePanelWidth = 0.5;
		  };
	  };
  };
}
