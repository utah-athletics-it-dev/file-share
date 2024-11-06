#!/bin/bash

# Step 1: Update package lists for upgrades and new package installations
echo "Updating package lists..."
echo Y | sudo apt update

# Step 2: Install required software
echo "Installing prerequisite software..."
echo Y | sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Step 3: Add Docker's official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Step 4: Set up the Docker repository
echo "Setting up the Docker repository..."
echo Y | sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"

# Step 5: Install Docker
echo "Installing Docker..."
apt-cache policy docker-ce
echo Y | sudo apt install docker-ce

# Step 6: Install Docker Compose
echo "Installing Docker Compose..."
echo Y | sudo apt install docker-compose

# Step 7: Add current user to the docker group
echo "Adding current user to Docker group..."
sudo usermod -aG docker ${USER}

echo "Installation successful. Please exit the terminal and log back in to refresh group memberships. Then, run lcinstall_b.sh to complete the setup."