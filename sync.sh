
#!/bin/bash

# Stop if any command fails
set -e

# Move to project directory
cd "$HOME/Research/LASI_GITHUB"

echo "=================================="
echo " LASI Research - GitHub Sync"
echo "=================================="

# Check for changes
if [ -z "$(git status --porcelain)" ]; then
    echo "No changes to sync."
    exit 0
fi

# Render Quarto website
echo ""
echo "Rendering Quarto website..."

quarto render

# Show changes for review
echo ""
echo "Files ready to upload:"
git status --short

echo ""
read -p "Do you want to commit and push these changes? (y/n): " confirm

if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Sync cancelled. Your local files are safe."
    exit 0
fi

# Commit and push
git add -u
git add index.qmd LASI_analysis.qmd _quarto.yml styles.css README.md tables docs

git commit -m "Update LASI research website"

git push origin main

echo ""
echo "=================================="
echo " Successfully synced with GitHub!"
echo "=================================="

