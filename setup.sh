#!/bin/bash
set -euo pipefail

# ------------------------------------------------------------
# SETUP
# ------------------------------------------------------------

POLICY_DIR="$HOME/.codex/.tmp/.codex-enterprise"
echo "1) Setting up [SYSTEM] level .codex environment..."
[ -d ~/.codex/policy ] || mkdir -p ~/.codex/policy
[ -d ~/.codex/hooks ] || mkdir -p ~/.codex/hooks
[ -d POLICY_DIR ] || mkdir -p POLICY_DIR

# ------------------------------------------------------------
# CLONE REPO
# ------------------------------------------------------------

POLICY_REPO="https://github.com/CFH-Dev/codex-enterprise.git"

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