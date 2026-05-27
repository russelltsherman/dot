
export GITHUB_PROFILE="$(active_profile)"
export GITHUB_TOKEN_FILE="$XDG_CONFIG_HOME/github/$GITHUB_PROFILE"

export GH_TOKEN=$(gh auth token)

# if [[ -f "$GITHUB_TOKEN_FILE" ]]
# then
#   GH_TOKEN="$(head -n 1 $GITHUB_TOKEN_FILE)"
#   export GH_TOKEN
#   export GITHUB_TOKEN=$GH_TOKEN
#   export GITHUB_API_TOKEN=$GITHUB_TOKEN
#   export GITHUB_PERSONAL_ACCESS_TOKEN=$GITHUB_API_TOKEN
# else
#   unset GITHUB_TOKEN
#   unset GITHUB_API_TOKEN
#   unset GITHUB_PERSONAL_ACCESS_TOKEN
# fi
