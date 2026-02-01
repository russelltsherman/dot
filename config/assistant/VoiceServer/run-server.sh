#!/usr/bin/env bash
# Voice Server Launcher Script

# Use current user's HOME if not set
export HOME="${HOME:-$(eval echo ~$USER)}"
export PATH="$HOME/.bun/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PORT=8888

# Use PAI_CONFIG_DIR for the PAI configuration directory
PAI_CONFIG_DIR="${PAI_CONFIG_DIR:-$HOME/.config/assistant}"

cd "${PAI_CONFIG_DIR}/Voice-In-The-Cloud"
exec "$HOME/.bun/bin/bun" run server.ts