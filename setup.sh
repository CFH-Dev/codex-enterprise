#!/bin/bash
set -euo pipefail

POLICY_REPO="https://github.com/CFH-Dev/codex-enterprise.git"
POLICY_DIR="$HOME/.codex/.tmp/ba"

echo "Setting up [SYSTEM] level .codex environment..."
[ -d ~/.codex/policy ] || mkdir -p ~/.codex/policy
[ -d ~/.codex/hooks ] || mkdir -p ~/.codex/hooks
[ -d POLICY_DIR ] || mkdir -p POLICY_DIR