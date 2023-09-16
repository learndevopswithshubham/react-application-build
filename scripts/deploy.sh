#!/bin/bash
cd /var/www/html/second
# Get the name of the current branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Set the destination based on the branch
if [ "$BRANCH" == "dev" ]; then
    DESTINATION="/var/www/html/one"
elif [ "$BRANCH" == "prod" ]; then
    DESTINATION="/var/www/html/second"
else
    echo "Unknown branch: $BRANCH"
    exit 1
fi

# Copy the files to the destination
cp -r /source/* "$DESTINATION"

# Set the file permissions
chmod -R 755 "$DESTINATION"