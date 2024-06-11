{ pkgs, ... }: 

{
  # TODO: applications installed through Nix are not findable
  # through Spotlight. For now, use Homebrew to install them
  # and work around this.
  # environment.systemPackages = with pkgs; [
  #   iterm2
  # ];

  # For applications that aren't available in nixpkgs,
  # or not available for aarch64-darwin.
  # TODO: need to manually install homebrew.

  homebrew = {
    enable = true;
    brews = [ 
      "adr-tools" 
      "devcontainer"
      "ollama"
    ];

    casks = [
      "diffmerge"
      "docker"
      "dropbox"
      "font-meslo-lg-nerd-font"
      "fork"
      "google-chrome"
      "gpg-suite"
      "keybase"
      "kindle"
      "kitty"
      "leapp"
      "loom"
      "obsidian"
      "postman"
      "postman-cli"
      "signal"
      "slack"
      "the-unarchiver"
      "visual-studio-code"
      "vlc"
    ];

    taps = [
      "stuartleeks/tap"
    ];

  };
}
