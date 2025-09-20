#!/bin/bash

# Interactive GitHub Setup Script
echo "🎨 REIMAGINE AI Streamer - GitHub Setup"
echo "========================================"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ Username cannot be empty. Exiting."
    exit 1
fi

REPO_NAME="reimagine-ai-streamer"
REPO_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME"

echo ""
echo "📋 Repository Details:"
echo "   Username: $GITHUB_USERNAME"
echo "   Repository: $REPO_NAME"
echo "   URL: $REPO_URL"
echo ""

# Check if remote already exists
if git remote get-url origin > /dev/null 2>&1; then
    echo "⚠️  Remote 'origin' already exists. Removing it first..."
    git remote remove origin
fi

# Add GitHub remote
echo "🔗 Adding GitHub remote..."
git remote add origin $REPO_URL

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Push to GitHub
echo "📤 Pushing to GitHub..."
echo "   This will upload all files to your GitHub repository..."
echo ""

if git push -u origin main; then
    echo ""
    echo "✅ SUCCESS! Repository setup complete!"
    echo ""
    echo "🌐 Your repository is now available at:"
    echo "   $REPO_URL"
    echo ""
    echo "📋 Next steps:"
    echo "1. 🔑 Update the API key in index.html (replace 'YOUR_API_KEY_HERE')"
    echo "2. 🌐 Enable GitHub Pages in repository settings (optional):"
    echo "   - Go to Settings > Pages"
    echo "   - Source: Deploy from a branch"
    echo "   - Branch: main, Folder: / (root)"
    echo "3. 📖 Update README.md with your repository URL"
    echo "4. 🚀 Share your project with others!"
    echo ""
    echo "🎉 Happy coding with REIMAGINE!"
else
    echo ""
    echo "❌ Error pushing to GitHub. Please check:"
    echo "1. Repository exists on GitHub"
    echo "2. You have write access to the repository"
    echo "3. Your GitHub credentials are correct"
    echo ""
    echo "💡 Make sure you've created the repository on GitHub first!"
fi
