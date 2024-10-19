#!/bin/bash

# Start the VNC server with the specified geometry and depth
vncserver :9 -geometry 1366x569 -depth 24 -log /dev/null &> /dev/null

echo "Vnc server is ready, run 'start.sh' and click open in browser on the notification."
echo "From there click vnc 'lite.html' and input the password"
echo "Default password is 'UWUOWO'"
