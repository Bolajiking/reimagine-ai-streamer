#!/bin/bash

# GitHub Repository Setup Commands
# Run these commands after creating the repository on GitHub

echo "🚀 Setting up GitHub repository..."

# Replace YOUR_USERNAME with your actual GitHub username
GITHUB_USERNAME="YOUR_USERNAME"
REPO_NAME="reimagine-ai-streamer"

echo "📝 Please replace 'YOUR_USERNAME' in this script with your actual GitHub username"
echo "   Current setting: $GITHUB_USERNAME"
echo ""

# Add GitHub remote
echo "🔗 Adding GitHub remote..."
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Repository setup complete!"
echo "🌐 Your repository is now available at: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo ""
echo "📋 Next steps:"
echo "1. Update the API key in index.html"
echo "2. Enable GitHub Pages in repository settings (optional)"
echo "3. Share your repository with others!"
