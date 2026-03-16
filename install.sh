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

  # Copy all .md files recursively except the skill's own README
  find "$skill_dir" -name "*.md" ! -name "README.md" | while read -r f; do
    # Get relative path from skill_dir
    rel_path="${f#$skill_dir/}"
    # Create target directory if needed
    target_file="$TARGET_DIR/$rel_path"
    mkdir -p "$(dirname "$target_file")"
    cp "$f" "$target_file"
    echo "  Installed: $rel_path -> $(dirname "$target_file")/"
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
