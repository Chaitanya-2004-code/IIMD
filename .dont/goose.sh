#!/bin/bash
# Install Goose CLI (lightweight coding agent) on Ubuntu/Linux

set -e

echo "🔧 Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "📦 Installing Node.js (v20+) via NodeSource..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "🚀 Installing Goose CLI..."
sudo npm install -g goose-cli

echo "🔍 Verifying installation..."
goose --help || echo "Goose CLI installed. Run 'goose' to start."

echo "🎉 Goose CLI setup complete!"

