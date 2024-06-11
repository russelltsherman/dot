# zsh::recompile 
# usage:
#     zsh::recompile 
zsh::recompile() {
  autoload -U zrecompile
  rm -f "${ZDOTDIR}/*.zwc"
  [ -f "${ZDOTDIR}/.zshrc" ] && zrecompile -p "${ZDOTDIR}/.zshrc"
  [ -f "${ZDOTDIR}/.zshrc.zwc.old" ] && rm -f "${ZDOTDIR}/.zshrc.zwc.old"

  for f in "${ZDOTDIR}"/**/*.zsh; do
    [ -f "$f" ] && zrecompile -p "$f"
    [ -f "${f}.zwc.old" ] && rm -f "${f}.zwc.old"
  done

  [ -f "${ZDOTDIR}/.zcompdump" ] && zrecompile -p "${ZDOTDIR}/.zcompdump"
  [ -f "${ZDOTDIR}/.zcompdump.zwc.old" ] && rm -f "${ZDOTDIR}/.zcompdump.zwc.old"

  . "${ZDOTDIR}/.zshrc"
}

# zsh::reload reload shell configuration
# usage:
#     zsh::reload 
zsh::reload() {
 exec ${SHELL} -l
}

# zsh::update pull upstream zsh and plugin updates
# usage:
#     zsh::update 
zsh::update() {
  # get upstream changes from zsh repo
  cd $ZDOTDIR && git stash save; git pull; git stash pop
  # reload shell
  zsh::reload
}
