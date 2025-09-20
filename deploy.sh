#!/bin/bash

# REIMAGINE Deployment Script
echo "🚀 Deploying REIMAGINE to GitHub..."

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Initial commit: REIMAGINE AI Webcam Streamer

✨ Features:
- Real-time AI video transformation
- WebRTC streaming to AI pipeline
- RTMP broadcasting to multiple platforms
- Interactive parameter controls with tooltips
- Professional black & gold UI design
- Multiple ControlNet support
- Platform presets for easy setup"

# Check if remote exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 Please add your GitHub repository URL:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/reimagine.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
else
    echo "🚀 Pushing to GitHub..."
    git push origin main
fi

echo "✅ Deployment complete!"
echo "🌐 Your project is now available on GitHub!"
echo "📖 Don't forget to update the README with your repository URL"
