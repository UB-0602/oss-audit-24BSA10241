#!/bin/bash
# ==========================================
# Script 4: Log File Analyzer
# Purpose: Count how many times a keyword
#          appears in a log file
# ==========================================

# Take first command-line argument as log file path
LOGFILE=$1

# Take second argument as keyword, default = "error"
KEYWORD=${2:-"error"}

# Initialize counter variable
COUNT=0

# Check whether the given file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# Read the file line by line
while read LINE; do

    # Search for keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then

        # Increase count if keyword found
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Display final result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
