#!/bin/sh
echo "Starting VNC Server..."
echo
echo "Access it with : vncviewer $(hostname -i):1"
echo
vncserver :1 -fg -geometry ${WIDTH:-800}x${HEIGHT:-600}
