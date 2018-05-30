#!/bin/bash

# Install Package
#cd /home/ubuntu/AWS_Demo/Angular/
cd /var/lib/jenkins/workspace/freestyle-build-app-in-this-instance-medium/AWS_Demo/Angular/
sudo npm install


# Build App
cd /var/lib/jenkins/workspace/freestyle-build-app-in-this-instance-medium/AWS_Demo/Angular
sudo npm run-script build