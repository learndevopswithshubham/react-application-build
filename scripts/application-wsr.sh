#!/bin/bash
cd /var/www/html/wsr-rebuild
ls
pwd
composer update
php artisan cache:clear
php artisan route:clear