#!/bin/bash

sudo yum install wget unzip httpd -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

mkdir -p /tmp/webfiles
cd /tmp/webfiles

wget $1
 yes A | unzip main.zip > /dev/null
sudo cp -r tic-tac-toe-main/* /var/www/html 
rm -rf main.zip

systemctl restart httpd
