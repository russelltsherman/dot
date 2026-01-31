
if chk::command "kubectl"
then
  eval $(kubectl completion zsh)

  alias k='kubectl'
fi
