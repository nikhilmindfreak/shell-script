#!/bin/bash

# Define source and backup directories
source_directory="/path/to/source_directory"
backup_directory="/path/to/backup_directory"

# Check if source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Error: Source directory '$source_directory' not found."
    exit 1
fi

# Check if backup directory exists, create if not
if [ ! -d "$backup_directory" ]; then
    echo "Creating backup directory '$backup_directory'..."
    mkdir -p "$backup_directory"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create backup directory '$backup_directory'."
        exit 1
    fi
fi

# Create a timestamp for the backup file
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="$backup_directory/backup_$timestamp.tar.gz"

# Create backup using tar
echo "Creating backup..."
tar -czf "$backup_file" -C "$source_directory" .

# Check if backup creation was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Error: Failed to create backup."
fi

