#!/usr/bin/env bash
# Ручная установка скилла supermind для Claude Code.
# Использование:
#   ./install.sh              — установить для всех проектов (~/.claude/skills)
#   ./install.sh .claude/skills — установить только в текущий проект
set -e
TARGET="${1:-$HOME/.claude/skills}"
SRC="$(cd "$(dirname "$0")" && pwd)/plugins/supermind/skills/supermind"
mkdir -p "$TARGET"
rm -rf "$TARGET/supermind"
cp -r "$SRC" "$TARGET/supermind"
echo "✅ supermind установлен в $TARGET/supermind"
echo "Перезапусти Claude Code — скилл подхватится автоматически."
