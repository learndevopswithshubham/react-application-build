#!/bin/bash
    
if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-rebuild-dev" ]
then
    if [ -e /home/my-temp-dir/.htaccess ]
    then
        echo "Waiting for 2 minutes..."
        sleep 180
        cp -R /home/my-temp-dir/. /var/www/html/first
        sudo rm -rf /home/my-temp-dir
        chown -R ubuntu:ubuntu /var/www/html/first
        cd /var/www/html/first
        # composer update
        # php artisan cache:clear
        # php artisan route:clear
    else
        cp -R /home/my-temp-dir/. /var/www/html/first
        sudo rm -rf /home/my-temp-dir
        chown -R ubuntu:ubuntu /var/www/html/first
        cd /var/www/html/first
        #
        # composer update
        # php artisan cache:clear
        # php artisan route:clear
    fi
fi

if [ "$DEPLOYMENT_GROUP_NAME" == "wsr-rebuild-uni" ]
then
    if [ -e /home/my-temp-dir/.htaccess ]
    then
        echo "Waiting for 2 minutes..."
        sleep 180
        cp -R /home/my-temp-dir/. /var/www/html/second
        sudo rm -rf /home/my-temp-dir
        chown -R ubuntu:ubuntu /var/www/html/second
        cd /var/www/html/second
        # composer update
        # php artisan cache:clear
        # php artisan route:clear
    else
        cp -R /home/my-temp-dir/. /var/www/html/second
        sudo rm -rf /home/my-temp-dir
        chown -R ubuntu:ubuntu /var/www/html/second
        cd /var/www/html/second
        # composer update
        # php artisan cache:clear
        # php artisan route:clear
    fi

fi