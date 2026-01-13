
# if nvim is installed alias vim to nvim
if chk::command "talosctl"
then
  $(talosctl completion zsh)

  alias tctl='talosctl'
fi
