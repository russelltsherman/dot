#
# vi-mode
#

zle-keymap-select() { 
  zle reset-prompt ; zle -R 
}

zle-accept-line() {
  zle accept-line
}

zle -N vi-accept-line

bindkey -v # Default to standard vim bindings

# use custom accept-line widget to update $VI_KEYMAP
bindkey -M vicmd '^J' zle-accept-line
bindkey -M vicmd '^M' zle-accept-line

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-p, ctrl-n for navigate history (standard behaviour)
bindkey '^P' up-history
bindkey '^N' down-history

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-r and ctrl-s to search the history
bindkey '^r' history-incremental-search-backward
bindkey '^s' history-incremental-search-forward

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

zle -N zle-keymap-select

# ------------------------------------------------------------------------------
# Helpers
# ------------------------------------------------------------------------------

# Temporarily switch to vi-mode
zsh::vimode::enable() {
  zle -N zle-keymap-select
  bindkey -v
}

# Temporarily switch to emacs-mode
zsh::vimode::disable() {
  bindkey -e
}
