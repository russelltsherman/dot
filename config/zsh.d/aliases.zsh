#!/usr/bin/env zsh

# create a new alias if it does not already exist
# usage:
#     alias::new 'll' 'ls -l'
alias::new() {
  chk::command "$1" || alias "$1"="$2"
}

alias::new 'bin' 'code ~/bin'
alias::new 'dot' 'cd ~/src/github.com/russelltsherman && code dot && cd $OLDPWD'
alias::new 'wiki' 'cd ~/src/github.com/russelltsherman && code vimwiki && cd $OLDPWD'
