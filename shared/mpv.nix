{ pkgs, lib, myhostname, ... }:
{
	programs.mpv = {
	  enable = true;

	  package = (
		pkgs.mpv-unwrapped.wrapper {
		  scripts = with pkgs.mpvScripts; [
			uosc
			sponsorblock
		  ];

		  mpv = pkgs.mpv-unwrapped.override {
		  };
		}
	  );

	  config = {
		profile = "high-quality";
		ytdl-format = "bestvideo+bestaudio";
		cache-default = 4000000;
	  };
	};
}
