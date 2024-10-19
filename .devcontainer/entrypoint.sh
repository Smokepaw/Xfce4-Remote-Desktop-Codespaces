#!/bin/bash
# entrypoint.sh

# Start VNC server when container starts
/usr/local/bin/start_vnc.sh

# Keep the container running
exec "$@"
