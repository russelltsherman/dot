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
    findutils
    fzf
    gh
    git
    glab
    gnugrep
    gnumake
    gnupg
    helmfile
    htop
    jq
    lazydocker
    lazygit
    neovim
    newsboat
    oath-toolkit
    pinentry_mac
    python3
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

