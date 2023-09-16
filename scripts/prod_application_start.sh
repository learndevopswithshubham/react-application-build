#!/bin/bash
cd ~/ || { echo "Failed to change to home directory"; exit 1; }

mkdir shubham || { echo "Failed to create directory 'shubham'"; exit 1; }

echo "Directory 'shubham' created successfully"
