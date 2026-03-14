#!/bin/bash
# install.sh — Install Claude Code skills to ~/.claude/commands/

SKILLS_DIR="$(dirname "$0")/skills"
TARGET_DIR="$HOME/.claude/commands"

print_usage() {
  echo "Usage: ./install.sh [skill-name|all]"
  echo ""
  echo "Available skills:"
  for d in "$SKILLS_DIR"/*/; do
    [ -d "$d" ] && echo "  - $(basename "$d")"
  done
  echo ""
  echo "Examples:"
  echo "  ./install.sh all"
  echo "  ./install.sh feature-story"
}

install_skill() {
  local skill_name="$1"
  local skill_dir="$SKILLS_DIR/$skill_name"

  if [ ! -d "$skill_dir" ]; then
    echo "Error: skill '$skill_name' not found in $SKILLS_DIR"
    exit 1
  fi

  mkdir -p "$TARGET_DIR"

  # Copy all .md files except the skill's own README
  for f in "$skill_dir"/*.md; do
    filename=$(basename "$f")
    if [ "$filename" != "README.md" ]; then
      cp "$f" "$TARGET_DIR/$filename"
      echo "  Installed: $filename -> $TARGET_DIR/"
    fi
  done

  echo "  Done: $skill_name"
}

# No args — show usage
if [ $# -eq 0 ]; then
  print_usage
  exit 0
fi

echo "Installing to: $TARGET_DIR"
echo ""

if [ "$1" == "all" ]; then
  for d in "$SKILLS_DIR"/*/; do
    if [ -d "$d" ]; then
      skill_name=$(basename "$d")
      echo "[ $skill_name ]"
      install_skill "$skill_name"
      echo ""
    fi
  done
else
  echo "[ $1 ]"
  install_skill "$1"
  echo ""
fi

echo "Installation complete. Restart Claude Code to pick up new skills."
