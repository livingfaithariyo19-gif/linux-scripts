#!/bin/bash

# Check for changes
if [[ -z $(git status --porcelain) ]]; then
    echo "No changes detected. Nothing to commit."
    exit 0
fi

echo "Changes detected:"
git status

echo ""
read -p "Enter commit message: " message

git add .

git commit -m "$message"

read -p "Push to GitHub? (y/n): " confirm

if [[ $confirm == "y" ]]; then
    git push
    echo "Pushed successfully 🚀"
else
    echo "Push cancelled."
fi
