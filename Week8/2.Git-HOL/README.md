# Git Ignore Hands-On Lab — VSCode Project

This project implements the Git ignore hands-on lab from the uploaded document.filecite17

## Lab Goals
- Understand what `.gitignore` is and how it works.
- Ignore specific files (e.g., `.log`) and folders (`log/`) in a Git repository.
- Verify ignored files via `git status`.

## Contents
- `setup_git.sh` — Configures Git (username, email, editor).
- `create_gitignore_lab.sh` — Creates `.log` file and `log/` folder, configures `.gitignore`.
- `instructions.md` — Step-by-step lab instructions.
- `LICENSE` — MIT License.

## Quick Start
1. Open folder in VSCode.
2. Open Git Bash terminal in VSCode.
3. Make scripts executable:
   ```bash
   chmod +x setup_git.sh create_gitignore_lab.sh
   ```
4. Configure Git:
   ```bash
   ./setup_git.sh "Your Name" "you@example.com"
   ```
5. Run the lab setup:
   ```bash
   ./create_gitignore_lab.sh
   ```
