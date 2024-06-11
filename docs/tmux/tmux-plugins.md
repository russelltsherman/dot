# tmux- plugins

[tmux-plugins](https://github.com/tmux-plugins)

attempting to incorporate plugins:

adding the following lines to tmux.conf

```sh
set -g @plugin ​'tmux-plugins/tpm'​
​set -g @plugin ​'tmux-plugins/tmux-resurrect'​
​run ​'~/.tmux/plugins/tpm/tpm'
```

results in the following when starting tmux

```sh
/Users/russellsherman/.tmux.conf:27: unknown command: ​set
```
