#!/bin/sh
hostname=`hostname`
sed -i "s/XXX/${hostname}/" /var/www/html/index.html