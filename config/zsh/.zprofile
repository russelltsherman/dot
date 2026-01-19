#!/usr/bin/env zsh

#
# Z Shell Startup File
#

# `$ZDOTDIR/.zprofile`
#   zprofile is similar to zlogin, except that it is sourced before zshrc.
#   zprofile is meant as an alternative to zlogin for ksh fans; the two are not intended to be used together, although this could certainly be done if desired.

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
