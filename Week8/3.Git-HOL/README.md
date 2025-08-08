# Git Branching and Merging — VSCode Project

This project implements the branching and merging Git hands-on lab from the uploaded document.filecite25

## Lab Goals
- Create and work with branches.
- Commit changes in a branch.
- Merge branch into master.
- View differences via CLI and (optionally) P4Merge.

## Contents
- `setup_git.sh` — Configures Git (username, email, editor).
- `branch_merge_lab.sh` — Demonstrates creating, switching, committing, merging, and cleaning up branches.
- `instructions.md` — Step-by-step lab instructions.
- `LICENSE` — MIT License.

## Quick Start
1. Open folder in VSCode.
2. Open Git Bash terminal in VSCode.
3. Make scripts executable:
   ```bash
   chmod +x setup_git.sh branch_merge_lab.sh
   ```
4. Configure Git:
   ```bash
   ./setup_git.sh "Your Name" "you@example.com"
   ```
5. Run the lab setup:
   ```bash
   ./branch_merge_lab.sh
   ```
