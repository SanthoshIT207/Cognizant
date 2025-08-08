#!/bin/bash
# Git Conflict Resolution Hands-On Script

git init

git checkout -b GitWork
echo '<message>Hello from GitWork branch!</message>' > hello.xml
git add hello.xml
git commit -m "Add hello.xml in GitWork branch"

git checkout master
echo '<message>Hello from master branch!</message>' > hello.xml
git add hello.xml
git commit -m "Add hello.xml in master branch"

git log --oneline --graph --decorate --all

git merge GitWork

echo "If conflict occurs, resolve hello.xml manually, then:"
echo "git add hello.xml"
echo "git commit -m 'Resolved merge conflict in hello.xml'"

echo "*.orig" > .gitignore
echo "*.backup" >> .gitignore
git add .gitignore
git commit -m "Add .gitignore for backup files"

git branch -d GitWork
git log --oneline --graph --decorate
