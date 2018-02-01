#!/bin/sh
yum -y install httpd
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><body><h1>CSCI E-49 Lab1 - Test Page Works</h1></body></html>" > index.html