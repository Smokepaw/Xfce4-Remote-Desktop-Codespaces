#!/bin/bash

# Install TigerVNC server
sudo apt update
sudo apt install tigervnc-standalone-server tigervnc-common -y

# Configure TigerVNC
# Set up the VNC password
VNC_PASSWORD="UWUOWO"
echo "$VNC_PASSWORD" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd


# Create the TigerVNC xstartup file
cat <EoT >> ~/.vnc/xstartup
#!/bin/sh
xrdb "$HOME"/.Xresources
startxfce4 &
EOT

# Make xstartup executable
chmod +x ~/.vnc/xstartup

# Add command to run start_vnc.sh from ~/.bashrc to run every session
echo "if [ -f ~/start_vnc.sh ]; then ~/start_vnc.sh; fi" >> ~/.bashrc

echo "Setup complete. You can now start the VNC server. Check README.md for exact steps."

# Navigate to noVNC directory
cd noVNC || exit

echo "Setup complete. You can now start the VNC server. Check README.md for exact steps."
