
if chk::command 'go'
then
  export GOBIN="${HOME}/bin"
  export GOPATH="$HOME/go"
  export GOROOT="$(go env GOROOT)"
  export PATH="${PATH}:${GOBIN}"

  alias gotour="\${GOPATH}/bin/gotour"
fi
