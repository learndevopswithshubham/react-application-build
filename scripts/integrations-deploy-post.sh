#!/bin/bash
    
if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-rebuild-dev" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/first1
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/first
    # cd /var/www/html/second
    # ls
    # pwd
    # composer update
    # php artisan cache:clear
    # php artisan route:clear

    # Insert other commands that need to run...
fi

if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-rebuild-uni" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/second
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/second
    # sudo apt install -y npm
    # ls
    # pwd
    # composer update
    # php artisan cache:clear
    # php artisan route:clear


    # Insert other commands that need to run...
fi