{ pkgs, config, ... }:
{
  # Determinate Nix manages Nix itself, so nix-darwin must not
  nix.enable = false;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";

  system.primaryUser = "kriskekovic";
  system.stateVersion = 6;
  users.users.kriskekovic.home = "/Users/kriskekovic";

  programs.zsh.enable = true;

  homebrew = {
    enable = true;
    taps = builtins.attrNames config.nix-homebrew.taps;
    onActivation.cleanup = "none";   # won't remove anything you installed by hand
    brews = [ ];
    casks = [
      # "google-chrome"
      # "visual-studio-code"
    ];
  };

  system.defaults = {
    NSGlobalDomain = {
      AppleInterfaceStyle = "Dark";
      KeyRepeat = 2;
      InitialKeyRepeat = 15;
      AppleShowAllExtensions = true;
    };
    dock.autohide = true;
    finder.FXPreferredViewStyle = "Nlsv";
    finder.CreateDesktop = false;
    trackpad.Clicking = true;
  };
}
