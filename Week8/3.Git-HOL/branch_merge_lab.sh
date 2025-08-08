#!/usr/bin/env bash
# branch_merge_lab.sh
# Demonstrates branching and merging in Git

set -e

REPO_DIR="GitBranchMergeDemo"
BRANCH_NAME="GitNewBranch"
MAIN_BRANCH="master"

# Create repo
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

if [ ! -d ".git" ]; then
  git init -b "$MAIN_BRANCH"
  echo "Initial file in master branch" > master.txt
  git add master.txt
  git commit -m "Initial commit on master"
fi

# Create new branch
git branch "$BRANCH_NAME"
echo "Available branches:"
git branch -a

# Switch to new branch
git checkout "$BRANCH_NAME"

# Add files to branch
echo "This file is in the new branch" > branch_file.txt
git add branch_file.txt
git commit -m "Add branch_file.txt in $BRANCH_NAME"

# Check status
git status

# Switch back to master
git checkout "$MAIN_BRANCH"

# Show CLI differences
echo "Differences between master and $BRANCH_NAME:"
git diff "$MAIN_BRANCH" "$BRANCH_NAME" || true

# If P4Merge is installed, uncomment below line to view visually
# git mergetool

# Merge branch into master
git merge "$BRANCH_NAME" --no-ff -m "Merge $BRANCH_NAME into $MAIN_BRANCH"

# Show log after merging
git log --oneline --graph --decorate --all

# Delete branch
git branch -d "$BRANCH_NAME"

# Final status
git status
