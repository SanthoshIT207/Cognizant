# Git Hands-On Lab — VSCode Project

This project implements the Git hands-on lab (original document: `1. Git-HOL.docx`). The original file is included as reference in the conversation. fileciteturn0file0

## What's included
- `setup_git.sh` — Bash script to configure Git (user.name, user.email), set Notepad++ as default editor (when running in Git Bash/Windows), and create helpful aliases.
- `create_repo.sh` — Bash script to initialize a local repo, create `welcome.txt`, add, commit and show push/pull commands.
- `instructions.md` — Step-by-step human-friendly instructions to run the lab in VSCode + Git Bash on Windows.
- `LICENSE` — MIT license (short).
- `original_doc_copy.txt` — small text copy/summary of the uploaded doc for quick reference.
- `Git-HOL-Tutorial.zip` — a zip containing the whole project (also present at the root).

## How to use (quick)
1. Open **VSCode**.
2. Open a **Git Bash** terminal inside VSCode (Terminal → New Terminal → choose Git Bash).
3. Make the scripts executable:
   ```bash
   chmod +x setup_git.sh create_repo.sh
   ```
4. Run the configuration script (edit the name/email in the script or provide via args):
   ```bash
   ./setup_git.sh "Your Name" "you@example.com"
   ```
5. Run the repo creation script:
   ```bash
   ./create_repo.sh
   ```
6. Follow `instructions.md` for how to create a remote repo and push.

See `instructions.md` for full details and troubleshooting.

