
# if the active profile file exists we will set the ACTIVE_PROFILE env var to it's contents
# this will allow us to scope systems to use the correct configuration for the given profile

if [[ ! -d "${XDG_CONFIG_HOME}/active" ]]
  mkdir -p "${XDG_CONFIG_HOME}/active"
then
fi


file="${XDG_CONFIG_HOME}/active/profile"

be(){
  if [[ -f "$file" ]]
  then
    ACTIVE_PROFILE="$(cat "$file")"
  fi

  profile=${1:-$ACTIVE_PROFILE}

  case $profile in
    ar|arch|archive|archiveresale)
      profile="archiveresale"
      ;;
    bh|bhco|ef|blockhenge)
      profile="blockhenge"
      ;;
    fb|finbots|finbotsdev)
      profile="finbotsdev"
      ;;
    ob|opsbots)
      profile="opsbots"
      ;;
    po|palolo)
      profile="palolo"
      ;;
    rs|russelltsherman)
      profile="russelltsherman"
      ;;
    *)
      profile="none"
      ;;
  esac

  if [ "$ACTIVE_PROFILE" != "$profile" ]
  then
    echo "changing active profile from $ACTIVE_PROFILE to $profile"
  else
    # echo "$ACTIVE_PROFILE"
    :
  fi

  echo "$profile" > "$file"
  ACTIVE_PROFILE="$profile"
  export ACTIVE_PROFILE

  # refresh pgpss configuration
  if [[ -f ${HOME}/.config/profiles/${profile}/.pgpass ]]
  then
    find ~/.pgpass -maxdepth 1 -type f -exec rm -rf {} \;
    cp -r ${HOME}/.config/profiles/${profile}/.pgpass  ${HOME}/.pgpass
  fi

  # refresh aws configuration
  find ~/.aws -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/aws ]]
  then
    cp -r ${HOME}/.config/profiles/${profile}/aws/*  ${HOME}/.aws
  fi

  # refresh github configuration
  find ~/.config/github -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/github ]]
  then
    cp -r ${HOME}/.config/profiles/${profile}/github/*  ${HOME}/.config/github
  fi

  # refresh gitlab configuration
  find ~/.config/gitlab -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/gitlab ]]
  then
    cp -r ${HOME}/.config/profiles/${profile}/gitlab/*  ${HOME}/.config/gitlab
  fi

  # refresh graphite configuration
  find ~/.config/graphite/user_config -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/graphite ]]
  then
    cp -r ${HOME}/.config/profiles/${profile}/graphite/*  ${HOME}/.config/graphite
  fi

  # refresh ssh configuration
  find ~/.ssh -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/ssh ]] 
  then
    cp -r ${HOME}/.config/profiles/${profile}/ssh/*  ${HOME}/.ssh
    # refresh ssh-agent keys
    ssh-add -D &> /dev/null
    for key in ${HOME}/.ssh/id_*; do
      if grep -q PRIVATE "$key"; then
          ssh-add "$key" &> /dev/null
      fi
    done
    # ssh-add -l
  fi

  # clear kubectl configuration
  rm -rf ${HOME}/.kube

  # refresh mfa configuration
  find ${HOME}/.config/mfa -maxdepth 1 -type f -exec rm -rf {} \;
  if [[ -d ${HOME}/.config/profiles/${profile}/mfa ]] 
  then
    key_count=$(ls ${HOME}/.config/profiles/${profile}/mfa | wc -l)
    if [[ ! $key_count -eq 0 ]]
    then
      cp ${HOME}/.config/profiles/${profile}/mfa/*  ${HOME}/.config/mfa
    fi
  fi

  # if function called with argument reload shell
  if [[ ! $# -eq 0 ]]
  then
    zsh::reload
  fi

  case $profile in
    ar|arch|archive|archiveresale)
      archiveresale
      ;;
    bh|bhco|ef|blockhenge)
      blockhenge
      ;;
    rs|russelltsherman)
      russelltsherman
      ;;
    *)
      ;;
  esac

}
