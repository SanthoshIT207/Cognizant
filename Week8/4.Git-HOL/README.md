# Git Conflict Resolution Hands-On Lab

This project is designed for practicing Git conflict resolution using two branches: `master` and `GitWork`.

## Steps Overview:
1. Create a new branch `GitWork` from `master`.
2. Add and commit `hello.xml` with some content in `GitWork`.
3. Switch to `master` and add a conflicting `hello.xml` with different content.
4. Commit the file in `master`.
5. Merge `GitWork` into `master` and resolve the conflict.
6. Add `.gitignore` to exclude backup files.
7. Delete the merged branch.
8. Use `git log`, `git diff`, and optionally `P4Merge` to visualize changes.

Use the `git-hol-steps.sh` script for guided commands.
