#!/usr/bin/env bash
# setup_git.sh
# Usage: ./setup_git.sh "Full Name" "email@example.com"
# Sets Git user details and editor

set -e

NAME="$1"
EMAIL="$2"

if [ -z "$NAME" ] || [ -z "$EMAIL" ]; then
  echo "Usage: $0 "Full Name" "email@example.com""
  exit 1
fi

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

# Set VSCode as default editor
git config --global core.editor "code --wait"

echo "Git configured:"
git config --global --list | grep -E "user.name|user.email|core.editor"
