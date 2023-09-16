#!/bin/bash

# Get the current branch name
branch=$(git symbolic-ref --short HEAD 2>/dev/null)

# Set the destination based on the branch name
if [ "$branch" = "dev" ]; then
  destination="/var/www/html/one"
elif [ "$branch" = "prod" ]; then
  destination="/var/www/html/second"
else
  echo "Unknown branch: $branch"
  exit 1
fi

# Deploy the files to the determined destination
rsync -av --exclude='.git/' / "$destination"
