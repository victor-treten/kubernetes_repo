#!/bin/bash

sudo rm -fr /tmp/webfiles
sudo rm -fr /var/wwww/html/*
sudo yum remove httpd wget unzip -y
sudo yum remove apache2 -y