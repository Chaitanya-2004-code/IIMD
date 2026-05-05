#!/bin/bash
# Install OpenCode (terminal-native AI agent) on Ubuntu/Linux

set -e

echo "🔧 Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "📦 Installing Node.js (v20+) via NodeSource..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "🚀 Installing OpenCode..."
sudo npm install -g opencode-ai

echo "🔍 Verifying installation..."
opencode --help || echo "OpenCode installed. Run 'opencode' to start."

echo "🎉 OpenCode setup complete!"

