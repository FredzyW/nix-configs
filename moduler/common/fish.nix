{ pkgs, lib, ... }:
{
	programs.fish = {
		enable = true;
		plugins = [
		   {
			 name = "z";
			 src = pkgs.fetchFromGitHub {
			   owner = "jethrokuan";
			   repo = "z";
			   rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
			   sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
			 };
		   }
		   {
			 name = "autopair";
			 src = pkgs.fishPlugins.autopair.src;
		   }
		   {
			 name = "foreign-env";
			 src = pkgs.fishPlugins.foreign-env.src;
		   }
		   {
			 name = "pure";
			 src = pkgs.fishPlugins.pure.src;
		   }
		   {
		   	 name = "fzf";
			 src = pkgs.fishPlugins.fzf.src;
		   }
		   {
		   	 name = "done";
			 src = pkgs.fishPlugins.done.src;
		   }
		   {
		   	 name = "sponge";
			 src = pkgs.fishPlugins.sponge.src;
		   }
		   { 
			 name = "grc"; 
			 src = pkgs.fishPlugins.grc.src; 
		   }
	  ];
	  shellAbbrs = {
		  homec="nvim ~/nix/config/home.nix";
		  ls="exa -lag --header";
		  dev="nix develop --command fish";
		  spot="steam-run ~/program/spotify_player";
	  };
	  interactiveShellInit = ''
		set fish_greeting # Disable greeting
		set -Ux FZF_DEFAULT_OPTS "--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"
		set --universal pure_symbol_prompt 
		set --universal pure_enable_nixdevshell true
		set --universal pure_color_primary f5a97f
		set --universal pure_color_danger ed8796
		set --universal pure_color_success a6da95
		set --universal pure_color_warning eed49f
		set --universal pure_color_light f4dbd6
		set --universal pure_color_mute c6a0f6
		# set --universal pure_color_danger ed8796
		# set --universal pure_color_danger ed8796
	  '';
	};
}
