#!/bin/bash

# Start the VNC server with the specified geometry and depth
./noVNC/utils/launch.sh --vnc localhost:5909 --listen 6082

echo "Vnc server is ready, run 'start.sh' and click open in browser on the notification."
echo "From there click vnc 'lite.html' and input the password"
echo "Default password is 'UWUOWO'"
