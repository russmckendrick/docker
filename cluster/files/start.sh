#!/bin/sh
hostname=`hostname -f`
sed -i "s/XXX/${hostname}/" /var/www/html/index.html