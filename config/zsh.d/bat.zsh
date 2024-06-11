
# bat: a cat clone with wings
# https://github.com/sharkdp/bat

# if bat is installed alias cat to bat
if chk::command "bat"
then
  alias cat="bat"
fi
