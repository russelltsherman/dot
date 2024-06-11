{pkgs, ...}: {
  imports = [
    ./direnv
  ];

  home.packages = with pkgs; [
    adrs
    antigen
    bat
    coreutils
    devbox
    devenv
    findutils
    fzf
    gh
    git
    glab
    gnugrep
    gnumake
    gnupg
    go
    htop
    jq
    lsd
    neovim
    newsboat
    nodejs_22
    oath-toolkit
    pinentry_mac
    poetry
    python313Full
    ripgrep
    rsync
    screen
    starship
    tmux
    tree
    # usbutils - not for darwin
    wget
    yarn
    yq
    zsh
  ];
}

