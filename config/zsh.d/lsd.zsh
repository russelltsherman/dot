# LSD (LSDeluxe)
# https://github.com/lsd-rs/lsd

if chk::command "lsd"
then
  echo "lsd is installed"
  alias ls='lsd'
  alias ll='lsd -l'
  alias lla='lsd -a'
  alias llal='lsd -al'
else
  echo "lsd is not installed"
  alias ll='ls -l'
  alias lla='ls -a'
  alias llal='ls -al'
fi
