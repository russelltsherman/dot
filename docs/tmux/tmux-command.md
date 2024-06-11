# tmux command mode

## The Command Prefix

Since our command-line programs run inside tmux, we need a way to tell tmux that the command we’re typing is for tmux and not for the underlying application. '

The `Ctrl-b` combination does just that.

This combination is called the command prefix.

## Command Mode

enter command mode by pressing `<prefix> :`

Create a new window by using the new-window command, like this:

new-window -n console

`<prefix> t` - clock