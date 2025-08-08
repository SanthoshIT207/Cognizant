#!/usr/bin/env bash
set -e

TARGET_BRANCH="Git-T03-HOL_002"
REMOTE="origin"
MASTER="master"

echo "== Git HOL Helper =="
# Check git available
if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is not installed or not in PATH."
  exit 2
fi

# Show remote URL
echo
echo "Remote repositories:"
git remote -v || true

# Current branch
CURR_BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "UNKNOWN")
echo
echo "Current branch: ${CURR_BRANCH}"

# Check working tree clean
echo
echo "Checking working tree status..."
STATUS=$(git status --porcelain)
if [ -n "$STATUS" ]; then
  echo "Working tree is NOT clean. Uncommitted changes exist:"
  git status --short
  echo
  echo "Recommended actions:"
  echo "  1) Review and commit: git add <files> && git commit -m 'message'"
  echo "  2) Or stash: git stash push -m 'work-in-progress'"
  echo "After cleaning the working tree re-run this script."
  exit 3
else
  echo "Working tree is clean."
fi

# List branches
echo
echo "Listing branches (local and remote):"
git branch -a

# Ensure master exists locally; if not, try to fetch
echo
echo "Ensuring local ${MASTER} exists..."
if git show-ref --verify --quiet refs/heads/${MASTER}; then
  echo "Local ${MASTER} exists."
else
  echo "Local ${MASTER} does not exist. Attempting to fetch from ${REMOTE}..."
  git fetch ${REMOTE} ${MASTER} || true
  if git show-ref --verify --quiet refs/remotes/${REMOTE}/${MASTER}; then
    git checkout -b ${MASTER} ${REMOTE}/${MASTER}
  else
    echo "Could not find ${MASTER} locally or on ${REMOTE}. Skipping master pull."
  fi
fi

# Pull remote master
if git show-ref --verify --quiet refs/heads/${MASTER}; then
  echo
  echo "Checking out ${MASTER} and pulling from ${REMOTE}/${MASTER}..."
  git checkout ${MASTER}
  git pull ${REMOTE} ${MASTER} || echo "Warning: pull failed. Please resolve manually."
else
  echo "Skipping pull: ${MASTER} branch not available."
fi

# Push target branch if exists
echo
echo "Attempting to push branch '${TARGET_BRANCH}' to ${REMOTE} (if present locally)..."
if git show-ref --verify --quiet refs/heads/${TARGET_BRANCH}; then
  echo "Found local branch ${TARGET_BRANCH}."
  echo "Switching to ${TARGET_BRANCH}..."
  git checkout ${TARGET_BRANCH}
  echo "Branch status:"
  git status --short
  echo "Pushing ${TARGET_BRANCH} to ${REMOTE}..."
  git push ${REMOTE} ${TARGET_BRANCH} || echo "Push failed — please check remote, authentication, or resolve upstream conflicts."
else
  echo "Local branch ${TARGET_BRANCH} not found. To push, create it or fetch it from remote."
  echo "You can create it from master (if desired): git checkout -b ${TARGET_BRANCH} ${MASTER}"
fi

echo
echo "Operation completed. You may inspect the remote repository (e.g., on GitHub) to verify changes."
