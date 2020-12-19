#!/bin/bash

rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock
apt-get -y update
echo "installing the depends..."
apt-get -y install unzip build-essential make dialog
apt-get -y install net-tools libmysqlclient-dev ntpdate libtool libtool-bin
sleep 1
apt-get -y install libfreetype6-dev libsasl2-dev libpcre3-dev autoconf libperl-dev libaio*
sleep 3
apt-get -y autoremove apache2 nginx php5 
apt-get -y install libncurses5-dev libssl-dev libcurl4-openssl-dev libjpeg62-dev libpng12-dev autoconf  
