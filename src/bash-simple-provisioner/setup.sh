#!/usr/bin/env bash

echo ">>> Starting provision"
apt-get update


echo ">>> Installing Apache Server"
apt-get install -y apache2

echo ">>> Installing PHP"
apt-get install -y -q php5-cli php5-common php-pear php5-xdebug php5-mysql php5-gd php5-dev php-apc php5-curl php-xml

echo ">>> Organizing folder structure"
rm -rf /var/www
ln -fs /vagrant /var/www