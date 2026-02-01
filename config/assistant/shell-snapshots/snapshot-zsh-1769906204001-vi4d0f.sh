# Snapshot file
# Unset all aliases to avoid conflicts with functions
unalias -a 2>/dev/null || true
# Functions
# Shell Options
setopt nohashdirs
setopt login
# Aliases
alias -- pai='bun ~/.config/assistant/skills/CORE/Tools/pai.ts'
alias -- run-help=man
alias -- which-command=whence
# Check for rg availability
if ! (unalias rg 2>/dev/null; command -v rg) >/dev/null 2>&1; then
  alias rg='/Users/russelltsherman/.data/claude/versions/2.1.29 --ripgrep'
fi
export PATH=/Users/russelltsherman/.data/../bin\:/Users/russelltsherman/.antigen/bundles/russelltsherman/zsh-pfetch-main/bin\:/opt/homebrew/opt/postgresql\@16/bin\:/Users/russelltsherman/.antigen/bundles/russelltsherman/base16-shell-main\:/Users/russelltsherman/.antigen/bundles/russelltsherman/zsh-pfetch-main\:/Users/russelltsherman/.antigen/bundles/russelltsherman/zsh-solarized-man-main\:/Users/russelltsherman/.antigen/bundles/zsh-users/zsh-autosuggestions\:/Users/russelltsherman/.antigen/bundles/zsh-users/zsh-completions\:/Users/russelltsherman/.antigen/bundles/zsh-users/zsh-history-substring-search\:/Users/russelltsherman/.antigen/bundles/zsh-users/zsh-syntax-highlighting\:/Users/russelltsherman/.local/bin\:/Users/russelltsherman/.data/mise/installs/awscli/2.33.10/.mise-bins\:/Users/russelltsherman/.data/mise/installs/bun/1.3.6/bin\:/Users/russelltsherman/.data/mise/installs/flux2/2.7.5\:/Users/russelltsherman/.data/mise/installs/fzf/0.67.0\:/Users/russelltsherman/.data/mise/installs/gh/2.85.0/gh_2.85.0_macOS_arm64/bin\:/Users/russelltsherman/.data/mise/installs/github-cli/2.86.0/gh_2.86.0_macOS_arm64/bin\:/Users/russelltsherman/.data/mise/installs/github-nushell-nushell/0.110.0\:/Users/russelltsherman/.data/mise/installs/graphite/1.7.17\:/Users/russelltsherman/.data/mise/installs/jq/1.8.1\:/Users/russelltsherman/.data/mise/installs/k9s/0.50.18\:/Users/russelltsherman/.data/mise/installs/kubectl/1.35.0\:/Users/russelltsherman/.data/mise/installs/lsd/1.2.0/lsd-v1.2.0-aarch64-apple-darwin\:/Users/russelltsherman/.data/mise/installs/neovim/0.11.6/nvim-macos-arm64/bin\:/Users/russelltsherman/.data/mise/installs/node/25.4.0/bin\:/Users/russelltsherman/.data/mise/installs/python/3.14.2/bin\:/Users/russelltsherman/.data/mise/installs/starship/1.24.2\:/Users/russelltsherman/.data/mise/installs/terraform/1.14.3\:/Users/russelltsherman/.data/mise/installs/yarn/4.12.0/bin\:/Users/russelltsherman/.data/mise/installs/yq/4.50.1\:/opt/homebrew/opt/findutils/libexec/gnubin\:/opt/homebrew/opt/coreutils/libexec/gnubin\:/opt/homebrew/bin\:/opt/homebrew/sbin\:/opt/homebrew/opt/coreutils/libexec/gnubin\:/usr/local/bin\:/System/Cryptexes/App/usr/bin\:/usr/bin\:/bin\:/usr/sbin\:/sbin\:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin\:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin\:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin\:/opt/pmk/env/global/bin\:/usr/local/MacGPG2/bin\:/Users/russelltsherman/bin\:/Applications/Ghostty.app/Contents/MacOS\:/Users/russelltsherman/bin
