# Instructions — Git Branching and Merging Lab

## 1. Open Project
Open this folder in VSCode.

## 2. Configure Git
Open a Git Bash terminal and run:
```bash
chmod +x setup_git.sh branch_merge_lab.sh
./setup_git.sh "Your Name" "you@example.com"
```

## 3. Run the Lab Script
```bash
./branch_merge_lab.sh
```

## 4. Observe Outputs
- You will see branch creation, switching, file creation, commits, and merges.
- CLI differences are shown via `git diff`.
- Merge commit is displayed in `git log --oneline --graph --decorate`.

## 5. P4Merge Integration (Optional)
If you have P4Merge installed:
```bash
git config --global merge.tool p4merge
git mergetool
```

## 6. Push to Remote (Optional)
Create a repo in GitHub, add remote, push:
```bash
git remote add origin <your-repo-url>
git push -u origin master
```
