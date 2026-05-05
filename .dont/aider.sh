#!/bin/bash
# Install Aider (AI pair programmer) on Ubuntu/Linux

set -e

echo "🔧 Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "📦 Installing Python & pip..."
sudo apt install -y python3 python3-pip git

echo "🚀 Installing Aider..."
pip install aider-chat

echo "🔍 Verifying installation..."
aider --help || echo "Aider installed. Run 'aider' to start."

echo "🎉 Aider setup complete!"

