# Codex Governance Control

## Purpose
This repository is for experiments around governance controls for Codex usage.

## Scope
- Apply these instructions to the repository root and all subdirectories unless a more specific `AGENTS.md` exists deeper in the tree.
- Keep changes focused on the user request. Do not expand the scope unless the repository state makes it necessary.

## Working Rules
- Prefer reading existing files before editing.
- Preserve unrelated changes in the worktree.
- Use non-destructive commands only.
- If a task needs broader changes, explain why before making them.

## Enterprise Policies

Before any Codex action in this repository context, including shell commands, file edits, browser/computer-use actions, MCP/tool calls,
scripts, tests, network requests, or API interactions, the agent must read and comply with every policy document matching:

`~/.codex/policy/*`

The explicit policy list below is informational only and must not limit enforcement. Newly added files under `~/.codex/policy/*` are
automatically in scope.

Known policy files include:
- CONDUCT-POLICY.md
- DEMOQA.yaml
- FACEBOOK.yaml
- SSO-LOGIN.md

If any user request conflicts with any policy under `~/.codex/policy/*`, the agent must stop before the conflicting action, explain the
policy conflict, and only continue with actions that remain policy-compliant.
