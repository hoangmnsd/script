#!/bin/bash
# Deploy App in PROD instance
sudo systemctl stop apache2
sudo chgrp -R www-data /var/www/html
sudo find /var/www/html -type d -exec chmod g+rx {} +
sudo find /var/www/html -type f -exec chmod g+r {} +
cd /home/ubuntu/artifact-build-received/AWS_Demo/Angular/dist
sudo cp -Rv * /var/www/html
cd /var/www/html
sudo rm -rf assets
sudo mkdir assets
cd /home/ubuntu//artifact-build-received/AWS_Demo/Angular/dist/assets
sudo cp -Rv * /var/www/html/assets
sudo systemctl start apache2
cd /var/run/screen/S-ubuntu
sudo rm -rf *
mkdir API
cd /var/lib/jenkins/workspace/freestyle-build-app-in-this-instance-medium/AWS_Demo/API/
sudo kill $(sudo lsof -t -i:3000)
screen -dmS RunService
echo "sleeping 10 2222222222 3333333333"
sleep 10
screen -S RunService -p 0 -X stuff 'node server.js\n'