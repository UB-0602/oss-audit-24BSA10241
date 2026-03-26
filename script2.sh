#!/bin/bash
# ==========================================
# Script 2: FOSS Package Inspector
# Purpose: Check if a package is installed
# ==========================================

# Define the package name to check
PACKAGE="python3"

# Check whether the package is installed using dpkg
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show package details if found
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Use case statement to describe the package
case $PACKAGE in
    python3)
        echo "Python: simple and powerful programming language"
        ;;
    git)
        echo "Git: version control system"
        ;;
    apache2)
        echo "Apache: web server"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
