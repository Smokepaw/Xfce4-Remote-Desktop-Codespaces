#!/bin/bash

# Update package list
sudo apt update

# Install Xfce4 and noVNC
sudo apt install xfce4 xfce4-goodies -y

# Clone noVNC repository
git clone https://github.com/novnc/noVNC.git

chmod +x setup2.sh


echo "Setup step 1 complete. You can now start step 2 with the command './setup2.sh'."
