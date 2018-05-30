#!/bin/bash
# Install MySQL
echo "America/Chicago" > /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
sudo apt-get -y install zsh htop
echo "mysql-server mysql-server/root_password password 1111" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password 1111" | sudo debconf-set-selections
sudo apt-get -y install mysql-server

# Install AWSCLI
sudo apt install awscli

# Install Apache
sudo apt-get -y install apache2

# Import database
cd /home/ubuntu/
mysql --user="root" --password="1111" -e "SHOW DATABASES"
mysql --user="root" --password="1111" -e "DROP DATABASE IF EXISTS awsdb"
mysql --user="root" --password="1111" -e "CREATE DATABASE awsdb"
mysql --user="root" --password="1111" -e "commit"
aws s3 cp s3://awscicd/ /home/ubuntu/ --recursive
mysql -hlocalhost -uroot -p awsdb < Dump20180523.sql --password="1111"

#cd /home/ubuntu/AWS_Demo/API/
cd /var/lib/jenkins/workspace/freestyle-build-app-in-this-instance-medium/AWS_Demo/API/
sudo npm install