#!/usr/bin/env bash
# create_gitignore_lab.sh
# Creates .log file, log folder, and sets up .gitignore

set -e

REPO_DIR="GitIgnoreDemo"
BRANCH="main"

mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

if [ ! -d ".git" ]; then
  git init -b "$BRANCH"
fi

# Create sample files
echo "This is a log file." > test.log
mkdir -p log
echo "Log folder file." > log/info.txt

# Create .gitignore
cat > .gitignore <<EOF
*.log
log/
EOF

echo ".gitignore created with rules:"
cat .gitignore

# Stage and commit .gitignore
git add .gitignore
git commit -m "Add .gitignore to ignore .log files and log folder"

echo "Run 'git status' now — you should see that test.log and log/ are untracked and ignored."
