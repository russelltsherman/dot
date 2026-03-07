#
# get called identity from aws
#
function aws_whoami() {
  echo "AWS whoami"
  aws sts get-caller-identity
}

#
# aws sso login with profile
#
function alogin() {
    profile=$(active_profile)
    if [ -z "$profile" ]
        aws sso login --profile $profile
    then
        aws sso login
    fi
}

#
# aws sso logout
#
function alogout() {
    aws sso logout
}
