#!/bin/bash
echo "Installing dependencies..."
cd /home/ec2-user/my-react-app || exit
npm install
npm run build
npm install --global serve
echo "Dependencies installed and React app built!"