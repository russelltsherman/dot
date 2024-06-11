# TODO

## design

refactor dotfiles

get away from using asdf and instead use nixos shells to facilitate per directory versioning of tools

integrate nixos shells with direnv 

integrate tmux and nvim configurations

evaluate need for maintaining lib files
is there not significant duplication between bash lib and zsh.d functions?

## steps

-[x] if being executed on darwin install xcode cli tools
-[x] link dotfiles to ~/
-[x] link config files to ~/.config
-[x] make linking targets consistent
-[x] use var for XDG_CONFIG_HOME

-[x] install nixos package manager
      as part of bootstrap or after
-[x] install direnv
-[x] install tmux and nvim

using nixos might allow us to skip installing xcode command line tools
but how do we pull the git repository without first having git installed?

-[x] convert from antibody to antigen for zsh plugin management
-[x] convert from impromptu to starship for prompt
-[x] migrate brew installs to nix
-[x] move brew install to nix
-[x] move brew cask installs to nix

look at yabai tiling window manager
look at Taskfile as Makefile replacement
find exercises to get better with tmux
find exercises to get better with nvim