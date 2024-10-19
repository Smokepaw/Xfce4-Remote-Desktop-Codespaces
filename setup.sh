#!/bin/bash

# Update package list
sudo apt update

# Install Xfce4 and noVNC
sudo apt install xfce4 xfce4-goodies -y

# Set up VNC password (replace 'your_password' with a secure password)
VNC_PASSWORD="UWUOWO"
echo "$VNC_PASSWORD" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Create the VNC directory
mkdir -p ~/.vnc

# Create the xstartup file
cat <<EOT >> ~/.vnc/xstartup
#!/bin/sh
xrdb $HOME/.Xresources
startxfce4 &
EOT

# Make xstartup executable
chmod +x ~/.vnc/xstartup

# Clone noVNC repository
git clone https://github.com/novnc/noVNC.git

# Navigate to noVNC directory
cd noVNC

echo "Setup complete. You can now start noVNC with the command './utils/launch.sh --vnc localhost:5901'."
