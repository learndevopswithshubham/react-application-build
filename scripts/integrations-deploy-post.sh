#!/bin/bash
    
if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-code-deploy-new-grp" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/one
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/one

    # Insert other commands that need to run...
fi

if [ "$DEPLOYMENT_GROUP_NAME" == "prod-deployment-shu-grp" ]
then
    cp -R /var/www/html/my-temp-dir/. /var/www/html/second
    sudo rm -rf /var/www/html/my-temp-dir/*
    chown -R ubuntu:ubuntu /var/www/html/second


    # Insert other commands that need to run...
fi