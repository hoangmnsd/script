#!/bin/bash

# Install Package
cd /var/lib/jenkins/workspace/2-build-app-in-cicd-instance/AWS_Demo/Angular/
sudo npm install

# Build App
cd /var/lib/jenkins/workspace/2-build-app-in-cicd-instance/AWS_Demo/Angular/
sudo npm run-script build