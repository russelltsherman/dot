# if findutils is installed place it at the front of the path so 
# its versions will be found before bsd based versions
if [ -d "/opt/homebrew/opt/findutils/libexec/gnubin" ]
then
  PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
fi

#  find -> ../../bin/gfind
#  locate -> ../../bin/glocate
#  man -> ../gnuman
#  updatedb -> ../../bin/gupdatedb
#  xargs -> ../../bin/gxargs