#
# get called identity from aws
#
function aws_whoami() {
  echo "AWS whoami"
  aws sts get-caller-identity
}

#
# output message and stop script execution
#
function die() {
  echo "$1"
  exit 1
}

#
# get list of eks clusters in current account
# fzf for selection if more than one active
#
function eks_select() {
  clusters=$(aws eks list-clusters | jq -r '.clusters[]')
  if (( $(grep -c . <<<"$clusters") > 1 ))
  then
    selected=$(printf "%s\n" "${clusters[@]}" | fzf)
  else
    selected=$clusters
  fi
  echo "$selected"
}

#
# fetch kubeconfig for requested cluster
# set kubectl current context to requested cluster
# if no cluster specified, query account for a list of clusters and provide a menu.
#
function klogin() {
  SELECTED=$1

  if ! command -v fzf &> /dev/null
  then
    die "fzf could not be found (try brew install fzf)"
  fi

  if [ -z "$SELECTED" ]
  then
    SELECTED=$(eks_select)
  fi

  parts=($(echo "$SELECTED" | tr "-" "\n"))
  env=${parts[2]}

  aws eks update-kubeconfig --name "${SELECTED}"
  kubectl config set-context --current --namespace="${env}"
  export KUBE_ENV=${env}
  
}

#
# clear kubectl current context
#
function klogout() {
  kubectl config unset current-context
}
