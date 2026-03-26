#!/bin/bash
# ==========================================
# Script 3: Disk and Permission Auditor
# Purpose: Check important directories,
#          their permissions, and sizes
# ==========================================

# Create an array of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Print title
echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do

    # Check if the directory exists
    if [ -d "$DIR" ]; then

        # Get permission, owner, and group information
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get directory size in human-readable format
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Print directory report
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done
