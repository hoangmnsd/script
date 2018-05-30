#!/bin/bash
# Deploy App
sudo systemctl stop apache2
sudo chgrp -R www-data /var/www/html
sudo find /var/www/html -type d -exec chmod g+rx {} +
sudo find /var/www/html -type f -exec chmod g+r {} +
cd /home/ubuntu/AWS_Demo/Angular/dist
sudo cp -Rv * /var/www/html
cd /var/www/html
sudo rm -rf assets
sudo mkdir assets
cd /home/ubuntu/AWS_Demo/Angular/dist/assets
sudo cp -Rv * /var/www/html/assets
sudo systemctl start apache2
cd /var/run/screen/S-ubuntu
sudo rm -rf *
cd /home/ubuntu/AWS_Demo/API
sudo kill $(sudo lsof -t -i:3000)
screen -dmS RunService
sleep 10
screen -S RunService -p 0 -X stuff 'node server.js\n'