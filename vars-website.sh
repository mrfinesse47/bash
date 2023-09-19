#!/bin/bash

sudo yum install wget unzip httpd -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

WEBDIR="/var/www/html"

mkdir -p /tmp/webfiles
cd /tmp/webfiles

wget https://github.com/mrfinesse47/tic-tac-toe/archive/refs/heads/main.zip
 yes A | unzip main.zip > /dev/null
sudo cp -r tic-tac-toe-main/* $WEBDIR 
rm -rf main.zip

systemctl restart httpd
