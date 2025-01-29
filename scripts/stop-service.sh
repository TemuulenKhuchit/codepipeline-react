#!/bin/bash
echo "Stopping existing service..."

# If using Nginx, you might not need to do anything here
# If using PM2:
# pm2 stop react-app || true

# If using 'serve', you might need to kill it:
pkill -f "serve -s build" || true

echo "Service stopped (if it was running)."