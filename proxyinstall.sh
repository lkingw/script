#!/bin/sh

yum update -y
yum install epel-release -y
yum install tinyproxy -y

wget https://raw.githubusercontent.com/lkingw/script/main/tinyproxy.conf

cp -f tinyproxy.conf /etc/tinyproxy/.

systemctl enable tinyproxy

systemctl start tinyproxy
