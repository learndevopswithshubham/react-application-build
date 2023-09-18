#!/bin/bash
    
if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-rebuild-dev" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/first
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/first
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    sleep 120
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
    sudo apt install -y npm
    sleep 120
    #
    # ls
    # pwd
    # composer update
    # php artisan cache:clear
    # php artisan route:clear
    #


    # Insert other commands that need to run...
    #
fi