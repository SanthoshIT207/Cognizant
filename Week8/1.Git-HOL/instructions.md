# Instructions — Running the Git Hands-On Lab in VSCode (Windows + Git Bash)

1. **Open the project in VSCode**
   - File → Open Folder → select `Git-HOL-Tutorial`.

2. **Start Git Bash terminal inside VSCode**
   - Terminal → New Terminal → choose *Git Bash* from the dropdown.
   - If Git Bash is not available, install Git for Windows and make sure "Git Bash Here" is in your PATH.

3. **Make scripts executable**
   ```bash
   chmod +x setup_git.sh create_repo.sh
   ```

4. **Configure your user**
   ```bash
   ./setup_git.sh "Your Full Name" "you@example.com"
   ```
   - The script will try to detect Notepad++ and configure it as the default `core.editor`. If you prefer VS Code, run:
     ```bash
     git config --global core.editor "code --wait"
     ```

5. **Create the repository and commit a file**
   ```bash
   ./create_repo.sh GitDemo
   ```

6. **Create a remote repo**
   - Go to GitHub or GitLab in your browser, create a repository named `GitDemo` (or your chosen name).
   - Add remote and push:
     ```bash
     git remote add origin git@github.com:YOUR_USERNAME/GitDemo.git
     git push -u origin master
     ```

7. **Using the configured editor**
   - `git commit` without `-m` will open your configured editor for multi-line messages.
   - You can open files with Notepad++ via the alias:
     ```bash
     git npp README.md
     # or directly
     /c/Program\ Files/Notepad++/notepad++.exe README.md &
     ```

## Troubleshooting
- If Notepad++ wasn't found, update the path in `setup_git.sh` to point to the installed `notepad++.exe`.
- If pushing fails due to branch mismatch, either rename your local branch or push to the remote main branch:
  ```bash
  git branch -M main
  git push -u origin main
  ```

