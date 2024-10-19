#!/bin/bash

# Start the VNC server with the specified geometry and depth
vncserver :9 -geometry 1366x569 -depth 24 -log /dev/null &> /dev/null
