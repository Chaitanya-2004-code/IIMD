#!/bin/bash
# Docker installation script for Ubuntu

set -e

echo "Updating package index..."
sudo apt update

echo "Installing prerequisites..."
sudo apt install -y ca-certificates curl

echo "Creating keyrings directory..."
sudo install -m 0755 -d /etc/apt/keyrings

echo "Downloading Docker's official GPG key..."
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "Adding Docker repository to Apt sources..."
sudo tee /etc/apt/sources.list.d/docker.sources > /dev/null <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

echo "Updating package index again..."
sudo apt update

echo "Installing Docker packages..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting Docker service..."
sudo systemctl start docker

echo "Checking Docker status..."
sudo systemctl status docker --no-pager

echo "Running test container..."
sudo docker run hello-world

echo "Docker installation completed successfully!"

