# Tmux Sessions

One of tmux’s biggest advantages is that you can fire it up, start up programs or processes inside the tmux environment, and then leave everything running in the background by “detaching” from the session.

## Creating tmux session

`tmux` or `tmux new` create a new tmux session and attach to it
`tmux new -s <sessionname>` create a named tmux session and attach to it
`tmux new -s <sessionname> -d` create a detached session
`tmux new -s <sessionname> -n <firstwindowname>`

## list tmux sessions

`tmux ls`

## Attaching tmux sessions

`tmux a #(a, at, or attach)`
`tmux a` attach to the last created session
`tmux a -t <sessionname>` attach to a named session

## Kill tmux sessions

`<prefix> x` kill the session currently attached
`tmux kill-session -t <sessionname>` kill a detached session
`tmux kill-server` stop tmux server and all created sessions

## session command keybindings

| Command      | Description                 |
| ------------ | --------------------------- |
| `<prefix> s` | list active sessions        |
| `<prefix> $` | set or change session name  |
| `<prefix> d` | detach from current session |
| `<prefix> t` | big clock                   |
| `<prefix> ?` | list shortcuts              |
| `<prefix> :` | prompt                      |

automatically attach to default tmux session when opening a terminal
add the following to your shell dotfiles

```sh
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
```
