# Instructions — Git Ignore Hands-On Lab

## 1. Open Project
Open this folder in VSCode.

## 2. Configure Git
Open a Git Bash terminal and run:
```bash
chmod +x setup_git.sh create_gitignore_lab.sh
./setup_git.sh "Your Name" "you@example.com"
```

## 3. Run the Lab Script
```bash
./create_gitignore_lab.sh
```

## 4. Verify Ignored Files
```bash
git status
```
You should see that `.log` files and the `log/` folder are **not** staged or tracked.

## 5. Push to Remote (Optional)
Create a repo in GitHub, add remote, push:
```bash
git remote add origin <your-repo-url>
git push -u origin main
```
