# Git HOL — VSCode Project
This project contains helper scripts and VSCode tasks to complete the **Git hands-on lab** "Git-T03-HOL_002".

## What this contains
- `scripts/git_hol.sh` : Bash script to check repo state, pull master, and push branch `Git-T03-HOL_002`.
- `scripts/git_hol.ps1`: PowerShell equivalent for Windows.
- `.vscode/tasks.json` : VSCode task to run the Bash script in an integrated terminal.
- `sample-change.txt` : a small sample file to demonstrate changes.
- `README.md` : this file.
- `.gitignore`

## How to use
1. Open this folder in VSCode.
2. If you're on Linux/macOS/WSL/Git Bash (Windows), open an integrated terminal and run:
   ```bash
   bash ./scripts/git_hol.sh
   ```
   Or use the VSCode Task: **Terminal → Run Task → Run Git HOL Script**.
3. On PowerShell (Windows), run:
   ```powershell
   ./scripts/git_hol.ps1
   ```
4. The scripts will:
   - Check Git is installed and show the remote URL.
   - Verify if `master` is in a clean state.
   - List available branches (local & remote).
   - Pull changes to `master` from `origin`.
   - Attempt to push local branch `Git-T03-HOL_002` to `origin` (if present).
   - Provide friendly messages and next steps if manual intervention is required.

> **Important**: These scripts cannot supply credentials or access a remote repository for you. Run them in a working clone of your repository that has `origin` set.

## Notes
- The script is idempotent and safe — it will not overwrite branches without explicit push.
- Adjust the remote name or branch names as needed for your environment.
