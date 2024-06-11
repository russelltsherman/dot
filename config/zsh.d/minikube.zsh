if chk::command "minikube"
then
  eval $(minikube completion zsh)

  alias mk='minikube'
fi
