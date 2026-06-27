#!/bin/bash
set -euo pipefail

# ------------------------------------------------------------
# GIT CLONE REPO
# ------------------------------------------------------------

POLICY_REPO="https://github.com/CFH-Dev/ba-governance-config.git"
POLICY_DIR="$HOME/.codex/.tmp/ba"

echo "1) Sync Github Repo to local .codex/.tmp/ba"

if [ ! -d "$POLICY_DIR/.git" ]; then
  git clone "$POLICY_REPO" "$POLICY_DIR"
else
  git -C "$POLICY_DIR" fetch --all --prune

  if git -C "$POLICY_DIR" status --short --branch | grep -q '\[behind '; then
    git -C "$POLICY_DIR" pull --ff-only
  else
    echo "Git repo already latest; skip copy."
    exit 0
  fi
fi

# ------------------------------------------------------------
# COPY FILES
# ------------------------------------------------------------

echo "2) Sync AGENTS.md to ~/.codex/AGENTS.md"
cp "$POLICY_DIR/AGENTS.md" "$HOME/.codex/AGENTS.md"

echo "3) Sync policy files to ~/.codex/policy"
[ -d ~/.codex/policy ] || mkdir -p ~/.codex/policy
cp -R "$POLICY_DIR/.codex/policy/"* "$HOME/.codex/policy/"

echo "4) Sync Hooks to ~/.codex/hooks"
[ -d ~/.codex/hooks ] || mkdir -p ~/.codex/hooks
cp -R "$POLICY_DIR/.codex/hooks/"* "$HOME/.codex/hooks/"
cp "$POLICY_DIR/.codex/hooks.json" "$HOME/.codex/hooks.json"

