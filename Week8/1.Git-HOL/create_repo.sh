#!/usr/bin/env bash
# create_repo.sh
# Initializes a local Git repository, creates welcome.txt, stages, commits and shows suggested push/pull commands.
set -e

REPO_DIR="${1:-GitDemo}"
BRANCH="${2:-master}"

echo "Creating repository directory: $REPO_DIR"
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

if [ -d ".git" ]; then
  echo "Repository already initialized in $(pwd)"
else
  git init -b "$BRANCH"
  echo "Initialized empty Git repository on branch '$BRANCH'."
fi

# Create welcome.txt if it doesn't exist
if [ ! -f "welcome.txt" ]; then
  cat > welcome.txt <<'EOF'
Welcome to the Git Hands-On Lab!
This file was created by create_repo.sh.
- Follow the lab steps to add, commit, and push this file.
EOF
  echo "Created welcome.txt"
else
  echo "welcome.txt already exists — skipping creation."
fi

echo "Current status:"
git status --short

echo "Adding welcome.txt..."
git add welcome.txt

echo "Committing with a clear multi-line message..."
git commit -m "chore: add welcome.txt" -m "Created by create_repo.sh as part of Git HOL exercise."

echo "Local commits:"
git --no-pager log --oneline -n 5

echo
echo "NEXT STEPS (manual):"
echo "1. Create a remote repository on GitHub / GitLab named exactly: $REPO_DIR"
echo "2. Add it as a remote, for example:"
echo "   git remote add origin git@github.com:YOUR_USERNAME/$REPO_DIR.git"
echo "   OR (HTTPS): git remote add origin https://github.com/YOUR_USERNAME/$REPO_DIR.git"
echo "3. Pull (if remote has commits) then push:"
echo "   git pull origin $BRANCH --allow-unrelated-histories"
echo "   git push -u origin $BRANCH"
echo
echo "If you prefer to use a different branch name like 'main', run this script with the branch name as second arg:"
echo "  ./create_repo.sh GitDemo main"
