if chk::command "aws"
then

  __aws_clear() {
    unset AWS_DEFAULT_PROFILE 
    unset AWS_PROFILE 
    unset AWS_EB_PROFILE
    echo::yellow "AWS profile cleared"
  }

  # agp returns the currently selected aws profile
  agp() {
    echo $AWS_PROFILE
  }

  # asp select which aws profile to set
  asp() {
    [[ -z "$1" ]] && __aws_clear
    
    local -a available_profiles
    available_profiles=($(aws_profiles))
    if [[ -z "${available_profiles[(r)$1]}" ]]
    then
      echo::red "Profile '$1' not found in '${AWS_CONFIG_FILE:-$HOME/.aws/config}'"
      echo::red "Available profiles: ${(j:, :)available_profiles:-no profiles found}"
      return 1
    fi

    export AWS_DEFAULT_PROFILE=$1
    export AWS_PROFILE=$1
    export AWS_EB_PROFILE=$1
  }

  # acp gets temporary access credentials from aws
  acp() {
    [[ -z "$1" ]] && __aws_clear && return

    local -a available_profiles
    available_profiles=($(aws_profiles))
    if [[ -z "${available_profiles[(r)$1]}" ]]; then
      echo "${fg[red]}Profile '$1' not found in '${AWS_CONFIG_FILE:-$HOME/.aws/config}'" >&2
      echo "Available profiles: ${(j:, :)available_profiles:-no profiles found}${reset_color}" >&2
      return 1
    fi

    local profile="$1"

    # Get fallback credentials for if the aws command fails or no command is run
    local aws_access_key_id="$(aws configure get aws_access_key_id --profile $profile)"
    local aws_secret_access_key="$(aws configure get aws_secret_access_key --profile $profile)"
    local aws_session_token="$(aws configure get aws_session_token --profile $profile)"

    # First, if the profile has MFA configured, lets get the token and session duration
    local mfa_serial="$(aws configure get mfa_serial --profile $profile)"
    local sess_duration="$(aws configure get duration_seconds --profile $profile)"
    local source_profile="$(aws configure get source_profile --profile $profile)"

    if [[ -n "$mfa_serial" ]]; then
      local -a mfa_opt
      local mfa_token
    	if [ -f "${XDG_CONFIG_HOME}/mfa/${source_profile:-profile}.mfa" ]
      then
        mfa_token=$(mfa ${source_profile:-profile})
      else
        echo -n "Please enter your MFA token for $mfa_serial: $mfa_token"
        read -r mfa_token
      fi 

      if [[ -z "$sess_duration" ]]; then
        echo -n "Please enter the session duration in seconds (900-43200; default: 3600, which is the default maximum for a role): "
        read -r sess_duration
      fi
      mfa_opt=(--serial-number "$mfa_serial" --token-code "$mfa_token" --duration-seconds "${sess_duration:-3600}")

      # Now see whether we need to just MFA for the current role, or assume a different one
      local role_arn="$(aws configure get role_arn --profile $profile)"
      local sess_name="$(aws configure get role_session_name --profile $profile)"

      if [[ -n "$role_arn" ]]; then
        # Means we need to assume a specified role
        aws_command=(aws sts assume-role --role-arn "$role_arn" "${mfa_opt[@]}")

        # Check whether external_id is configured to use while assuming the role
        local external_id="$(aws configure get external_id --profile $profile)"
        if [[ -n "$external_id" ]]; then
          aws_command+=(--external-id "$external_id")
        fi

        # Get source profile to use to assume role
        if [[ -z "$sess_name" ]]; then
          sess_name="${source_profile:-profile}"
        fi
        aws_command+=(--profile="${source_profile:-profile}" --role-session-name "${sess_name}")

        echo "Assuming role $role_arn using profile ${source_profile:-profile}"
      else
        # Means we only need to do MFA
        aws_command=(aws sts get-session-token --profile="$profile" "${mfa_opt[@]}")
        echo "Obtaining session token for profile $profile"
      fi

      # Format output of aws command for easier processing
      aws_command+=(--query '[Credentials.AccessKeyId,Credentials.SecretAccessKey,Credentials.SessionToken]' --output text)

      # Run the aws command to obtain credentials
      local -a credentials
      credentials=(${(ps:\t:)"$(${aws_command[@]})"})

      if [[ -n "$credentials" ]]; then
        aws_access_key_id="${credentials[1]}"
        aws_secret_access_key="${credentials[2]}"
        aws_session_token="${credentials[3]}"
      fi
    fi

    # Switch to AWS profile
    if [[ -n "${aws_access_key_id}" && -n "$aws_secret_access_key" ]]; then
      export AWS_DEFAULT_PROFILE="$profile"
      export AWS_PROFILE="$profile"
      export AWS_EB_PROFILE="$profile"
      export AWS_ACCESS_KEY_ID="$aws_access_key_id"
      export AWS_SECRET_ACCESS_KEY="$aws_secret_access_key"

      if [[ -n "$aws_session_token" ]]; then
        export AWS_SESSION_TOKEN="$aws_session_token"
      else
        unset AWS_SESSION_TOKEN
      fi

      echo "Switched to AWS Profile: $profile"
    fi
  }

  # list available profiles
  aws_profiles() {
    [[ -r "${AWS_CONFIG_FILE:-$HOME/.aws/config}" ]] || return 1
    grep --color=never -Eo '\[.*\]' "${AWS_CONFIG_FILE:-$HOME/.aws/config}" | sed -E 's/^[[:space:]]*\[(profile)?[[:space:]]*([-_[:alnum:]\.@]+)\][[:space:]]*$/\2/g'
  }

  # zsh completion for asp acp aws_change_access_key functions
  _aws_profiles() {
    reply=($(aws_profiles))
  }
  compctl -K _aws_profiles asp acp aws_change_access_key

fi
