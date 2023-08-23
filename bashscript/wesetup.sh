#!/bin/bash

## This is a script to host a website with html ##

# Installing Dependencies
echo "###########################################"
echo "Installing packages"
echo "###########################################"
sudo yum install wget unzip httpd -y > /dev/null
echo


# Start & Enable Service
echo "###########################################"
echo "start and enable httpd"
echo "###########################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating Temp Directory
echo "###########################################"
echo "Starting artifact deployment"
echo "###########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip > /dev/null
unzip 2135_mini_finance.zip > /dev/null
sudo cp -r 2135_mini_finance/* /var/www/html
echo

# Bounce Service
echo "###########################################"
echo "restarting httpd service"
echo "###########################################"
sudo systemclt restart httpd
echo

#clean up
echo "###########################################"
echo "removing temporary files"
echo "###########################################"
sudo rm -fr /tmp/webfiles
echo


echo "###########################################"
echo "list the content of /var/www/html"
echo "###########################################"

echo "###########################################"
echo "Restart httpd again"
echo "###########################################"
sudo systemctl restart httpd

echo "###########################################"
echo "Print out the ip address"
echo "###########################################"
ip addr show