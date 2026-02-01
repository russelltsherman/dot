---
capture_type: LEARNING
timestamp: 2026-01-31 20:12:29 UTC
auto_captured: true
tags: [auto-capture]
---

# Quick Learning: Explained Claude Code plugin system - discovery, installation scopes, usage, and management

**Date:** 2026-01-31
**Auto-captured:** Yes

---

## Summary

Explained Claude Code plugin system - discovery, installation scopes, usage, and management

## Analysis

N/A

## Actions Taken

N/A

## Results

N/A

## Current Status

N/A

## Next Steps

Try `/plugin` to browse more, or use your installed plugins like `/superpowers:brainstorming`

---

<details>
<summary>Full Response</summary>

━━━ 🧠  T H I N K ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2/7

**Analysis:**
- What user actually means: Wants practical knowledge to extend Claude Code functionality
- What user wants to achieve: Ability to discover, install, configure, and use plugins
- What user wants to avoid: Confusion about commands, installation scopes, or plugin types
- Ideal state for user: Confident understanding of plugin system with actionable commands

━━━ 📋  P L A N ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3/7

**IDEAL:** Russell understands Claude Code plugins and can install/use them confidently

━━━ 📤  O U T P U T ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 6.5/7

## Claude Code Plugins - Complete Guide

### What Are Plugins?

Plugins extend Claude Code with reusable functionality:
- **Skills/Commands** - Custom `/command` shortcuts
- **Agents** - Specialized subagents for specific tasks
- **Hooks** - Event handlers for Claude Code lifecycle
- **MCP Servers** - External tool integrations
- **LSP Servers** - Code intelligence (go-to-definition, type info)

★ Insight ─────────────────────────────────────
- Plugins use **namespaced commands** like `/plugin-name:command` to avoid conflicts
- This differs from local skills which use simple names like `/commit`
─────────────────────────────────────────────────

---

### Discovering Plugins

Open the plugin browser:
```bash
/plugin
```

This shows a tabbed interface:
| Tab | Purpose |
|-----|---------|
| **Discover** | Browse available plugins |
| **Installed** | Manage your plugins |
| **Marketplaces** | Add/remove plugin sources |
| **Errors** | View loading issues |

---

### Installing Plugins

**Interactive (recommended):**
```bash
/plugin
# Navigate to Discover → Select plugin → Press Enter → Choose scope
```

**CLI commands:**
```bash
# Install to user scope (available everywhere)
claude plugin install plugin-name@marketplace-name

# Install to project scope (shared with team)
claude plugin install plugin-name@marketplace-name --scope project

# Install locally (gitignored)
claude plugin install plugin-name@marketplace-name --scope local
```

★ Insight ─────────────────────────────────────
- **User scope**: `~/.claude/settings.json` - personal, all projects
- **Project scope**: `.claude/settings.json` - team-shared, version controlled
- **Local scope**: `.claude/settings.local.json` - private to your machine
─────────────────────────────────────────────────

---

### Using Plugins

After installation, use namespaced commands:
```bash
/plugin-name:command-name
```

**Examples from your installed plugins:**
```bash
/commit-commands:commit        # Create a git commit
/commit-commands:commit-push-pr # Commit, push, and open PR
/superpowers:brainstorming     # Creative exploration
/code-review:code-review       # Review a PR
/Notion:create-task            # Create Notion task
```

---

### Managing Plugins

```bash
# Disable (keep installed but inactive)
/plugin disable plugin-name@marketplace-name

# Re-enable
/plugin enable plugin-name@marketplace-name

# Update to latest
/plugin update plugin-name@marketplace-name

# Remove completely
/plugin uninstall plugin-name@marketplace-name
```

---

### Your Currently Active Plugins

| Plugin | Purpose |
|--------|---------|
| `github` | GitHub integration |
| `linear` | Linear project management |
| `Notion` | Notion workspace |
| `slack` | Slack integration |
| `commit-commands` | Git commit workflows |
| `code-review` | PR review tools |
| `feature-dev` | Guided feature development |
| `superpowers` | Advanced workflows (TDD, debugging, brainstorming) |
| `hookify` | Create behavior-preventing hooks |
| `ralph-loop` | Iterative task loops |
| `context7` | Documentation lookup |
| `learning-output-style` | Educational response mode |

---

### Adding Marketplaces

The official Anthropic marketplace is automatic. Add more:
```bash
# From GitHub
/plugin marketplace add owner/repo

# From GitLab or other Git hosts
/plugin marketplace add https://gitlab.com/company/plugins.git

# From local path
/plugin marketplace add ./my-marketplace

# Specific branch/tag
/plugin marketplace add https://github.com/org/plugins#v1.0.0
```

---

### Common Plugin Categories

| Category | Examples |
|----------|----------|
| **Code Intelligence (LSP)** | typescript-lsp, pyright-lsp, rust-analyzer-lsp, gopls-lsp |
| **External Services** | github, gitlab, linear, notion, slack, figma, vercel |
| **Development Workflows** | commit-commands, pr-review-toolkit, agent-sdk-dev |
| **Output Styles** | explanatory-output-style, learning-output-style |

---

### Troubleshooting

| Issue | Solution |
|-------|----------|
| Command not recognized | Update Claude Code: `brew upgrade claude-code` |
| LSP not starting | Install the binary (e.g., `npm install -g typescript-language-server`) |
| Plugin errors | Check `/plugin` → Errors tab |
| High memory | Disable unused LSP plugins |

━━━ 📚  L E A R N ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 7/7

📋 SUMMARY: Explained Claude Code plugin system - discovery, installation scopes, usage, and management
📁 CAPTURE: You have 12 plugins already active including superpowers, commit-commands, and code-review
➡️ NEXT: Try `/plugin` to browse more, or use your installed plugins like `/superpowers:brainstorming`

⭐ RATE (1-10):

🗣️ Russell: Plugins extend Claude Code with skills, agents, and integrations - use `/plugin` to browse and install them.

</details>
