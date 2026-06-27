#!/bin/bash
set -euo pipefail

echo "Setting up [SYSTEM] level .codex environment..."
[ -d ~/.codex/policy ] || mkdir -p ~/.codex/policy
[ -d ~/.codex/hooks ] || mkdir -p ~/.codex/hooks
