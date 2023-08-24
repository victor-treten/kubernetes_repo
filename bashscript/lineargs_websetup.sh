#!/bin/bash

# Variable Delcaration
PACKAGES="httpd wget unzip"
SVC=httpd
# URL="https://www.tooplate.com/zip-templates/2100_artist.zip"
# ART_NAME="2100_artist"
TEMPDIR="/tmp/webfiles"





## This is a script to host a website with html ##

# Installing Dependencies
echo "###########################################"
echo "Installing packages"
echo "###########################################"
sudo yum install $PACKAGES -y > /dev/null
echo


# Start & Enable Service
echo "###########################################"
echo "start and enable httpd"
echo "###########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "###########################################"
echo "Starting artifact deployment"
echo "###########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp -r $2/* /var/www/html
echo

# Bounce Service
echo "###########################################"
echo "restarting httpd service"
echo "###########################################"
sudo systemctl restart $SVC
echo

#clean up
echo "###########################################"
echo "removing temporary files"
echo "###########################################"
sudo rm -fr $TEMPDIR
echo


echo "###########################################"
echo "list the content of /var/www/html"
echo "###########################################"
ls /var/www/html

echo "###########################################"
echo "Restart httpd again"
echo "###########################################"
sudo systemctl restart $SVC

echo "###########################################"
echo "Print out the ip address"
echo "###########################################"
ip addr show