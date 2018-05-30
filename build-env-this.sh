#!/bin/bash
echo "version: 2"
# Install Npm - NodeJs
sudo apt-get update
#sudo apt-get -y install npm
sudo apt-get -y install nodejs
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get -y install nodejs

# Install AWSCLI
sudo apt install awscli

# Install MySQL
# from https://gist.github.com/sheikhwaqas/9088872
#echo "America/Chicago" > /etc/timezone
#sudo dpkg-reconfigure -f noninteractive tzdata
#sudo apt-get -y install zsh htop
#echo "mysql-server mysql-server/root_password password 1111" | sudo debconf-set-selections
#echo "mysql-server mysql-server/root_password_again password 1111" | sudo debconf-set-selections
#sudo apt-get -y install mysql-server

# Install Apache
#sudo apt-get -y install apache2

# Dowload Source
#git clone https://github.com/QuyetAQ/AWS_Demo.git
#sudo cp -r /var/lib/jenkins/workspace/freestyle-build-env-in-this-instance-medium/AWS_Demo /home/ubuntu/


# Import database
#cd /home/ubuntu/AWS_Demo
#mysql --user="root" --password="1111" -e "SHOW DATABASES"
#mysql --user="root" --password="1111" -e "DROP DATABASE IF EXISTS awsdb"
#mysql --user="root" --password="1111" -e "CREATE DATABASE awsdb"
#mysql --user="root" --password="1111" -e "commit"
#mysql -hlocalhost -uroot -p awsdb < Dump20180523.sql --password="1111"