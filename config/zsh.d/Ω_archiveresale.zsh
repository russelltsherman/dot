#!/usr/bin/env zsh

archiveresale () {
  cd ~/src/github.com/archiveresale && open archiveresale.code-workspace
}

# Archive - Push to CANARY
deploy-canary() {
    local branch_to_upload="${1:-$(git branch --show-current)}"
    git checkout "$branch_to_upload" && \
    git branch -f canary && \
    git checkout canary && \
    git push -f origin canary && \
    git checkout -
}

ecr-login() {
  aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 639926137975.dkr.ecr.us-east-2.amazonaws.com
}
