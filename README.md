# Codex Enterprise Configuration

A system-level configuration repository for Codex that provides standardized policies, agents, and utilities for Claude Code users.

## Quick Start

Run this command to install and configure Codex Enterprise settings on your system:

```bash
curl -s https://raw.githubusercontent.com/CFH-Dev/codex-enterprise/main/first-time-setup.sh | bash
```

## What Gets Installed

The setup script configures the following components in your `~/.codex/` directory:

### 1. **Agents** (`AGENTS.md`)
   - Pre-configured Claude Code agents and skills
   - Reference guide for available automation workflows

### 2. **Policies** (`~/.codex/policy/`)
   - Conduct policies and guidelines
   - Demo QA configurations
   - SSO login settings
   - Organizational standards and best practices

### 3. **Utilities** (`~/.codex/bin/`)
   - `codex-sync`: Keeps your local configuration in sync with the latest enterprise settings

### 4. **System Hooks** (`~/.codex/hooks.json`)
   - Automatically runs on every Claude Code session start
   - Executes `codex-sync` to pull the latest configuration updates

## How It Works

1. **Installation**: The setup script clones this repository to `~/.codex/.tmp/.codex-enterprise`
2. **Configuration**: All policy files, agents, and utilities are copied to your `~/.codex/` directory
3. **Auto-Sync**: A system-level hook is enabled that runs `codex-sync` whenever you start a new Claude Code session
4. **Updates**: Each session automatically pulls the latest enterprise configuration from this repository

## Manual Updates

To manually sync your configuration with the latest changes:

```bash
sh $HOME/.codex/bin/codex-sync
```

## Architecture

```
~/.codex/
├── AGENTS.md              # Agent definitions and skills
├── hooks.json             # System hooks configuration
├── policy/                # Enterprise policies
│   ├── CONDUCT-POLICY.md
│   ├── DEMOQA.yaml
│   ├── FACEBOOK.yaml
│   └── SSO-LOGIN.md
├── bin/                   # Utilities
│   └── codex-sync         # Configuration sync tool
└── hooks/                 # Hook implementations
```

## Updating the Repository

When you need to update these enterprise settings for all users, push changes to this repository. The next time users start a Claude Code session, their configuration will automatically sync to the latest version.

## Support

For issues or questions about Codex Enterprise configuration, refer to the policy documents in `~/.codex/policy/` or contact your organization's Codex administrator.