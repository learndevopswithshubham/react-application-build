#!/bin/bash
set -x
# Determine the current Git branch
current_branch=$(git rev-parse --abbrev-ref HEAD)

# Define the commands to run for each branch
if [ "$current_branch" = "dev" ]; then
    # Commands to run for the 'dev' branch
    echo "Running commands for 'dev' branch..."
    cd /var/www/html/one
    ls
    pwd
    composer update
    php artisan cache:clear
    php artisan route:clear
    # Add your 'dev' branch-specific commands here
elif [ "$current_branch" = "prod" ]; then
    # Commands to run for the 'prod' branch
    echo "Running commands for 'prod' branch..."
    cd /var/www/html/second
    ls
    pwd
    composer update
    php artisan cache:clear
    php artisan route:clear
    # Add your 'prod' branch-specific commands here
else
    # Default commands if the branch doesn't match 'dev' or 'prod'
    echo "Running default commands..."
    # Add your default commands here
fi

# Additional common commands that should run for all branches
# Add your common commands here

# Exit with a success status code
exit 0