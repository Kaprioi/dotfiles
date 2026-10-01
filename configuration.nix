{ pkgs, ... }:
{
  # Determinate Nix manages Nix itself, so nix-darwin must not
  nix.enable = false;

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.primaryUser = "kriskekovic";
  system.stateVersion = 6;

  programs.zsh.enable = true;
}
