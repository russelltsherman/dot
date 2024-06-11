  # "cliPluginsExtraDirs": [
  #     "/usr/local/lib/docker/cli-plugins"
  # ]

if chk::command "colima"
then
  colima completion zsh > "${fpath[1]}/_colima"
fi
