#!/usr/bin/env bash

echo "            ██╗   ██╗ █████╗  ██████╗ ██████╗  █████╗ ███╗   ██╗████████╗                "
echo "            ██║   ██║██╔══██╗██╔════╝ ██╔══██╗██╔══██╗████╗  ██║╚══██╔══╝                "
echo "            ██║   ██║███████║██║  ███╗██████╔╝███████║██╔██╗ ██║   ██║                   "
echo "            ╚██╗ ██╔╝██╔══██║██║   ██║██╔══██╗██╔══██║██║╚██╗██║   ██║                   "
echo "             ╚████╔╝ ██║  ██║╚██████╔╝██║  ██║██║  ██║██║ ╚████║   ██║                   "
echo "              ╚═══╝  ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝                   "
echo "                                                                                         "
echo "██████╗ ██████╗  ██████╗ ██╗   ██╗██╗███████╗██╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ "
echo "██╔══██╗██╔══██╗██╔═══██╗██║   ██║██║██╔════╝██║██╔═══██╗████╗  ██║██║████╗  ██║██╔════╝ "
echo "██████╔╝██████╔╝██║   ██║██║   ██║██║███████╗██║██║   ██║██╔██╗ ██║██║██╔██╗ ██║██║  ███╗"
echo "██╔═══╝ ██╔══██╗██║   ██║╚██╗ ██╔╝██║╚════██║██║██║   ██║██║╚██╗██║██║██║╚██╗██║██║   ██║"
echo "██║     ██║  ██║╚██████╔╝ ╚████╔╝ ██║███████║██║╚██████╔╝██║ ╚████║██║██║ ╚████║╚██████╔╝"
echo "╚═╝     ╚═╝  ╚═╝ ╚═════╝   ╚═══╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ "
echo ""                                                                                        
echo ""

sudo apt-get update

echo ">>> Installing PHP"
sudo apt-get install -y -q php5 php5-cli php5-common php-pear php5-xdebug php5-mysql php5-gd php5-dev php-apc php5-curl

echo ">>> Installing Apache Server"
sudo apt-get install -y apache2 libapache2-mod-php5
/etc/init.d/apache2 restart

echo ">>> Installing MySQL"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server

echo ">>> Installing VIM LIKE A LOSER"
# sudo apt-get install -y vim

cd /var/www/
mkdir test


echo ">>> Organizing folder structure"
rm -rf /var/www
ln -fs /vagrant /var/www
