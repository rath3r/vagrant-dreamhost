#!/usr/bin/env bash

apt-get -y update
apt-get -y upgrade --show-upgraded

apt-get -y install apache2

a2enmod rewrite

apt-get -y install mysql-server

apt-get -y install php5 php-pear php5-suhosin

apt-get -y install php5-mysql

service apache2 restart

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
