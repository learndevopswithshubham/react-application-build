#!/bin/bash
    
if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-code-deploy-new-grp" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/second
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/second
    cd /var/www/html/second
    ls
    pwd
    composer update
    php artisan cache:clear
    php artisan route:clear

    # Insert other commands that need to run...
fi

if [ "$DEPLOYMENT_GROUP_NAME" == "prod-deployment-shu-grp" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/one
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/one
    sudo apt install -y npm
    # ls
    # pwd
    # composer update
    # php artisan cache:clear
    # php artisan route:clear


    # Insert other commands that need to run...
fi