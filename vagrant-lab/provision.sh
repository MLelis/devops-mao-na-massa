#!/usr/bin/env bash

echo "Installing Apache and setting it up..."
sudo su
yum update -y
yum upgrade -y
yum install -y kernel-devel
yum install -y httpd > /dev/null 2>&1

cp -r //vagrant/html/* /var/www/html/
service httpd start