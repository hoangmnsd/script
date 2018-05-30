#!/bin/bash

# Install Package
cd /var/lib/jenkins/workspace/2-freestyle-build-app-in-this-instance-medium/AWS_Demo/Angular/
sudo npm install

# Build App
cd /var/lib/jenkins/workspace/2-freestyle-build-app-in-this-instance-medium/AWS_Demo/Angular/
sudo npm run-script build