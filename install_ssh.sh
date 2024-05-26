#!/bin/bash

# Check if openssh-server is installed
if ! dpkg -l | grep -qw openssh-server; then
  echo "OpenSSH Server is not installed. Installing..."
  sudo apt update
  sudo apt upgrade -y
  sudo apt install openssh-server -y
else
  echo "OpenSSH Server is already installed."
fi

# Start the SSH service
sudo systemctl start ssh

# Enable SSH to start on boot
sudo systemctl enable ssh

echo "SSH setup and installation complete."
