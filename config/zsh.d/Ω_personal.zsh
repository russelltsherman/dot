#!/usr/bin/env zsh

alias::new 'bin' 'code ~/bin'
alias::new 'dot' 'code ~/src/github.com/russelltsherman/dot'
alias::new 'homelab' 'code ~/src/github.com/russelltsherman/homelab'

russelltsherman() {
  cd ~/src/github.com/russelltsherman && open homelab.code-workspace
}
