#!/bin/bash
# current_branch=$(git rev-parse --abbrev-ref HEAD)

# if [ "$current_branch" = "dev" ]; then
#     echo "Running commands for 'dev' branch..."
#     cd /var/www/html/one
#     ls
#     pwd
#     composer update
#     php artisan cache:clear
#     php artisan route:clear

# elif [ "$current_branch" = "prod" ]; then
#     echo "Running commands for 'prod' branch..."
#     cd /var/www/html/second
#     ls
#     pwd
#     composer update
#     php artisan cache:clear
#     php artisan route:clear

# else
#     echo "Running default commands..."
# fi

# exit 0