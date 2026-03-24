#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe $TOOL represents $FREEDOM. I want to build $BUILD and share it freely with everyone." > $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "Your manifesto:"
cat $OUTPUT
