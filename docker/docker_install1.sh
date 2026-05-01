#!/bin/bash
# Docker installation via Snap on Ubuntu

set -e

echo "Installing Docker using Snap..."
sudo snap install docker

echo "Checking Docker version..."
sudo docker --version

echo "Creating docker group (if not exists)..."
sudo groupadd docker || echo "Group 'docker' already exists."

echo "Adding current user to docker group..."
sudo usermod -aG docker $(whoami)

echo "Rebooting system to apply group changes..."
sudo reboot

# After reboot, you can run:
# docker ps

