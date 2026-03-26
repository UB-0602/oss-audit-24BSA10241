#!/bin/bash
# ==========================================
# Script 5: Open Source Manifesto Generator
# Purpose: Take user input and create
#          a personalized manifesto
# ==========================================

# Display intro message
echo "Answer three questions to generate your manifesto."
echo ""

# Take user input using read command
read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

# Store current date
DATE=$(date)

# Define output file name
OUTPUT="manifesto.txt"

# Write manifesto content into file
echo "On $DATE, I believe $TOOL represents $FREEDOM. I want to build $BUILD and share it freely with everyone." > $OUTPUT

# Show confirmation and display file content
echo ""
echo "Manifesto saved to $OUTPUT"
echo "Your manifesto:"
cat $OUTPUT
