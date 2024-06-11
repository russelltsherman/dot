# LSD (LSDeluxe)
# https://github.com/lsd-rs/lsd

if chk::command "lsd"
then
  alias ls='lsd'
  alias ll='lsd -l'
  alias lla='lsd -a'
  alias llal='lsd -al'
fi
