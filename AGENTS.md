# Codex Enterprise - Claude Code Governance & Policies

## Overview

**Codex Enterprise** is an organization-wide configuration and governance framework for Claude Code. It establishes standardized policies, working rules, and best practices to ensure consistent, secure, and compliant usage of Claude Code across your organization.

This document defines the governance controls and operating principles that Claude Code agents (including Claude AI) must follow when working in any repository configured with Codex Enterprise.

---

## Purpose

This repository provides:
- **System-level governance controls** for Claude Code usage
- **Enterprise policies** that all Claude Code agents must comply with
- **Standardized utilities** for configuration management
- **Best practices** for collaborative development

---

## Scope

These instructions apply to:
- The repository root and all subdirectories
- All Claude Code agent operations within this codebase
- Unless a more specific `AGENTS.md` exists in a subdirectory (which takes precedence)

---

## Core Working Rules

All Claude Code agents must follow these principles:

### 1. **Policy Compliance**
   - Review and comply with all applicable policies in `~/.codex/policy/` before taking action
   - If a user request conflicts with enterprise policies, do not perform the action
   - Report policy conflicts to the user clearly

### 2. **Code Quality**
   - Prefer reading existing files before editing
   - Preserve unrelated changes in the worktree
   - Use non-destructive commands only
   - Never force-push or overwrite without explicit authorization

### 3. **Transparency**
   - Explain scope changes before making broader modifications
   - Communicate decisions and reasoning to the user
   - Document non-obvious implementation choices

### 4. **Safety & Security**
   - Follow the principle of least privilege
   - Avoid destructive operations unless explicitly requested
   - Validate external inputs and API calls

---

## Enterprise Policies

Before taking any action in this repository, you **must** comply with all applicable policy documents:

**Location:** `~/.codex/policy/`

**Required Policies:**
- **CONDUCT-POLICY.md** - Behavioral guidelines and conduct standards
- **DEMOQA.yaml** - Demo and QA environment configurations
- **FACEBOOK.yaml** - Third-party integration settings
- **SSO-LOGIN.md** - Authentication and single sign-on requirements

### Policy Enforcement
- All actions must conform to active policies
- Policy violations take precedence over user requests
- Contact your organization's administrator if policies need clarification

---

## Best Practices

### For Claude Code Agents
1. Operate with minimal scope—only make changes necessary for the task
2. Confirm high-risk operations (destructive changes, shared state modifications)
3. Read code before proposing changes
4. Avoid over-engineering solutions

### For Repository Maintainers
1. Keep policy documents updated in `~/.codex/policy/`
2. Test configuration changes before pushing to main
3. Document new governance rules clearly
4. Announce breaking changes to users

### For End Users
1. Run `first-time-setup.sh` to initialize your Codex Enterprise configuration
2. Enable system hooks to keep your settings synchronized
3. Review enterprise policies in `~/.codex/policy/` regularly
4. Report policy gaps or conflicts to your administrator

---

## Configuration Synchronization

Codex Enterprise automatically syncs your local configuration on every Claude Code session start:

- **Hook:** `SessionStart` → runs `$HOME/.codex/bin/codex-sync`
- **Purpose:** Pulls the latest policies, agents, and utilities from the repository
- **Frequency:** Every time you open Claude Code

Manual sync available:
```bash
sh $HOME/.codex/bin/codex-sync
```

---

## Support & Questions

- **Configuration Issues:** Check `~/.codex/policy/` for applicable guidelines
- **Policy Clarification:** Contact your Codex Enterprise administrator
- **Bug Reports:** Submit issues to the Codex Enterprise repository
- **Documentation:** Refer to `README.md` for system architecture overview
