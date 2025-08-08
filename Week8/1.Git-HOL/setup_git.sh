#!/usr/bin/env bash
# setup_git.sh
# Usage: ./setup_git.sh "Full Name" "email@example.com"
# Configures git global user, sets Notepad++ as default editor (Windows), and adds an alias.

set -e

NAME="$1"
EMAIL="$2"

if [ -z "$NAME" ] || [ -z "$EMAIL" ]; then
  echo "Usage: $0 "Full Name" "email@example.com""
  exit 2
fi

echo "Setting git global user.name and user.email..."
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

# Configure Notepad++ as default editor in Git Bash on Windows if installed.
# The script checks for common Notepad++ install locations. Adjust if your path is different.
NPP_PATHS=(
  "/c/Program Files/Notepad++/notepad++.exe"
  "/c/Program Files (x86)/Notepad++/notepad++.exe"
  "/c/Users/$USER/AppData/Local/Programs/Notepad++/notepad++.exe"
)

FOUND=""
for p in "${NPP_PATHS[@]}"; do
  if [ -f "$p" ]; then
    FOUND="$p"
    break
  fi
done

if [ -n "$FOUND" ]; then
  echo "Found Notepad++ at: $FOUND"
  # Set core.editor to use winpty so interactive ed opens properly in Git Bash
  git config --global core.editor ""$FOUND" -multiInst -notabbar -nosession -noPlugin"
  # Add a convenience alias 'npp' to open files from bash
  git config --global alias.npp "!f() { "$FOUND" "$@" & }; f"
  echo "Configured Notepad++ as default git editor and added 'git npp' alias."
else
  echo "Notepad++ not found in common locations. Please install Notepad++ or edit this script to point to its path."
  echo "You can still set your editor manually, e.g.:"
  echo "  git config --global core.editor "code --wait"    # use VSCode"
fi

echo
echo "Current global git config (showing user and editor):"
git config --global --list | grep -E "user.name|user.email|core.editor|alias.npp" || true

echo "Done."
