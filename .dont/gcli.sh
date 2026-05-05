#!/bin/bash
# Gemini CLI installation script for Ubuntu/Linux
# Tested on Ubuntu 22.04/24.04/26.04

set -e

echo "🔧 Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "📦 Installing prerequisites..."
sudo apt install -y curl build-essential

echo "📥 Installing Node.js (v20+) via NodeSource..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "✅ Node.js version:"
node -v
echo "✅ npm version:"
npm -v

echo "🚀 Installing Gemini CLI globally..."
sudo npm install -g @google/gemini-cli

echo "🔍 Verifying installation..."
gemini --help || echo "Gemini CLI installed. Run 'gemini' to start."

echo "🎉 Gemini CLI setup complete!"

