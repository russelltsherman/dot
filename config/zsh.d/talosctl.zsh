
if chk::command "talosctl"
then
  $(talosctl completion zsh)

  alias tctl='talosctl'
fi
