#!/bin/bash
echo "Starting React service..."
cd /home/ec2-user/my-react-app || exit
# Option 1: Use Nginx to serve the build folder
# - Copy your build folder to /usr/share/nginx/html or similar
# - Then reload Nginx
# sudo cp -r build/* /usr/share/nginx/html/
# sudo systemctl restart nginx
# echo "Nginx has been restarted to serve the new build."

# Option 2: Use 'serve' to serve the build folder
# serve -s build -l 3000 &

# Option 3: Use pm2 to run 'serve'
pm2 start serve --name "react-app" -- serve -s build -l 3000

echo "React service started!"
