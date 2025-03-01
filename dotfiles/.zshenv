#!/usr/bin/env zsh

#
# Z Shell Startup File
#

# - `$ZDOTDIR/.zshenv`
#   .zshenv is sourced on all invocations of the shell, unless the -f option is set.
#   It should contain commands to set the command search path, plus other important environment variables.
#   .zshenv should not contain commands that produce output or assume the shell is attached to a tty.

# If ZDOTDIR is not set, then the value of HOME is used; this is the usual case.

# if XDG_CONFIG_HOME is set we will respect it.. otherwise will set it to $HOME/.config
export XDG_CONFIG_HOME="$HOME/.config"
[ -d "$XDG_CONFIG_HOME" ] || mkdir -p "$XDG_CONFIG_HOME" # ensure $XDG_CONFIG_HOME dir exists

export XDG_DATA_HOME="$HOME/.data"
[ -d "$XDG_DATA_HOME" ] || mkdir -p "$XDG_DATA_HOME" # ensure $XDG_DATA_HOME dir exists

# our .zshenv is symlinked to $HOME so that the zshell will load it automatically
# with this var we are telling zshell to look to ${HOME}/.zsh/ for the remaining zshell startup files
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
[ -d "$ZDOTDIR" ] || mkdir -p "$ZDOTDIR" # ensure $ZDOTDIR dir exists

# if ZDOTDEEDIR is already set we will respect it.. otherwise set it to ${HOME}/.zsh.d/
export ZDOTDEEDIR="${XDG_CONFIG_HOME}/zsh.d"
[ -d "$ZDOTDEEDIR" ] || mkdir -p "$ZDOTDEEDIR" # ensure $ZDOTDEEDIR dir exists

export ZDOTCACHEDIR="${HOME}/.cache/zsh"
[ -d "$ZDOTCACHEDIR" ] || mkdir -p "$ZDOTCACHEDIR" # ensure $ZDOTCACHEDIR dir exists

# if user has a home bin directory add it to the path
[ -d "${HOME}/bin" ] && export PATH="$HOME/bin:$PATH"

if [ -n "$TMUX" ]
then
    export TERM="tmux-256color"
else
    export TERM="xterm-256color"
fi