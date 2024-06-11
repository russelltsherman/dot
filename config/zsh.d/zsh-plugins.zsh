if chk::command "antigen"
then
  # https://github.com/russelltsherman/base16-shell
  antigen bundle russelltsherman/base16-shell@main

  # https://github.com/russelltsherman/zsh-256color
  # antigen bundle russelltsherman/zsh-256color@main

  # A Zsh plugin to help remembering those shell aliases and Git aliases you once defined.
  # https://github.com/russelltsherman/zsh-alias-tips
  # antigen bundle russelltsherman/zsh-alias-tips@main

  # https://github.com/russelltsherman/zsh-async
  # antigen bundle russelltsherman/zsh-async@main

  # https://github.com/russelltsherman/zsh-clipboard
  # antigen bundle russelltsherman/zsh-clipboard@main

  # https://github.com/russelltsherman/zsh-docker
  # antigen bundle russelltsherman/zsh-docker@main

  # a common interface to extract any format compressed archive
  # https://github.com/russelltsherman/zsh-extract
  # antigen bundle russelltsherman/zsh-extract@main

  # a collection of helper scripts for working with git
  # https://github.com/russelltsherman/zsh-git
  # antigen bundle russelltsherman/zsh-git@main

  # a collection of helper scripts for working with git
  # https://github.com/russelltsherman/zsh-github
  # antigen bundle russelltsherman/zsh-github@main

  # antigen bundle russelltsherman/zsh-jvm@main

  # enhancements for working with kubernetes
  # https://github.com/russelltsherman/zsh-k8s
  # antigen bundle russelltsherman/zsh-k8s@main

  # https://github.com/russelltsherman/zsh-pfetch
  antigen bundle russelltsherman/zsh-pfetch@main 

  # Easily see what's happening on your computer's ports
  # https://github.com/russelltsherman/zsh-ports
  # antigen bundle russelltsherman/zsh-ports@main 

  # A modified version of oh-my-zsh's plugin colored-man-pages
  # optimized for solarized dark theme in terminal.
  # https://github.com/russelltsherman/zsh-solarized-man
  antigen bundle russelltsherman/zsh-solarized-man@main

  # https://github.com/russelltsherman/zsh-shell
  # antigen bundle russelltsherman/zsh-shell@main

  # z - jump around
  # https://www.github.com/russelltsherman/zsh-z.git
  # antigen bundle russelltsherman/zsh-z@main

  # Fish-like fast/unobtrusive autosuggestions for zsh.
  # https://github.com/zsh-users/zsh-autosuggestions
  antigen bundle zsh-users/zsh-autosuggestions

  # https://github.com/zsh-users/zsh-completions
  antigen bundle zsh-users/zsh-completions

  # This is a clean-room implementation of the Fish shell's history search feature, where you can type in any part of any command from history and then press chosen keys, such as the UP and DOWN arrows, to cycle through matches.
  # https://github.com/zsh-users/zsh-history-substring-search
  antigen bundle zsh-users/zsh-history-substring-search 

  # Fish shell-like syntax highlighting for Zsh.
  # https://github.com/zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-syntax-highlighting

  # https://www.github.com/zsh-users/zaw.git
  # antigen bundle zsh-users/zaw

  antigen apply
else 
  echo::red "antigen command not installed skipping zsh plugin load"
fi
