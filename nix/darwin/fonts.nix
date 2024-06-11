{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    atkinson-hyperlegible
    jetbrains-mono
    emacs-all-the-icons-fonts 
    fira-code 
    fira-mono
    font-awesome 
    hack-font
    inconsolata
    roboto 
    roboto-mono 
  ];
}