
# set default claude directory
export CLAUDE_CONFIG_DIR="$XDG_CONFIG_HOME/claude"

# set default pai directory
export PAI_CONFIG_DIR="$XDG_CONFIG_HOME/assistant"
alias pai="bun ${PAI_CONFIG_DIR}/skills/CORE/Tools/pai.ts"
