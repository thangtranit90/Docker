#!/bin/bash

# Update package source
logger "Update package source"
apt -y update

# Install NGINX
logger "Install NGINX"
apt -y install nginx

# Enable 80 inbound
logger "Enable 80 inbound"
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Rename default Ngnix home page
logger "Rename default Ngnix home page"
if [ ! -f /var/www/html/index.nginx-debian.html ]
then
    mv /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.old
fi

# Modify home page
logger "Modify home page"
sed -i 's/Thien Huynh/Your Name/g' /var/www/html/index.html