#!/usr/bin/env bash
# install.sh — PromptShield one-click installer (macOS/Linux)
set -euo pipefail
TARGET="${1:-$HOME/.claude/skills/promptshield}"
SRC="$(cd "$(dirname "$0")" && pwd)"
echo "PromptShield installer"
echo "  source : $SRC"
echo "  target : $TARGET"
mkdir -p "$TARGET"
cp "$SRC/SKILL.md" "$SRC/README.md" "$TARGET/"
cp -R "$SRC/scripts" "$TARGET/"
cp -R "$SRC/.claude-plugin" "$TARGET/" 2>/dev/null || true
cp -R "$SRC/.codex-plugin" "$TARGET/" 2>/dev/null || true
cp -R "$SRC/.cursor-plugin" "$TARGET/" 2>/dev/null || true
echo "done. verify: python3 $TARGET/scripts/promptshield_flow.py --list"
