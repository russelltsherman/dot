
if chk::command 'go'
then
  export GOBIN="${HOME}/bin"
  export GOPATH="$HOME"
  export GOROOT="$(go env GOROOT)"
  export PATH="${PATH}:${GOBIN}"
  export GO111MODULE=on

  alias gotour="\${GOPATH}/bin/gotour"
fi
