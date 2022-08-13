#!/bin/sh

yum update -y
yum install epel-release -y
yum install tinyproxy -y

wget https://github.com/lkingw/betform/tinyproxy.conf

cp -f tinyproxy.conf /etc/tinyproxy/.

systemctl enable tinyproxy

systemctl start tinyproxy
