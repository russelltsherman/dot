
# make gnu grep the system default
if chk::command 'ggrep'
then
  export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
fi
