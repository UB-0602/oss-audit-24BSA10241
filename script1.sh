#!/bin/bash
# ==========================================
# Script 1: System Identity Report
# Purpose: Display basic Linux system details
# ==========================================

# Store student/project information in variables
STUDENT_NAME="Uday Bafna"
SOFTWARE_CHOICE="Python"

# Collect system information using Linux commands
KERNEL=$(uname -r)          # Gets kernel version
USER_NAME=$(whoami)         # Gets current logged-in username
UPTIME=$(uptime -p)         # Gets system uptime in readable form
DATE=$(date)                # Gets current date and time
DISTRO=$(lsb_release -d | cut -f2)   # Gets Linux distribution name

# Print report header
echo "==============================="
echo " Open Source Audit — $STUDENT_NAME"
echo "==============================="
echo "Software : $SOFTWARE_CHOICE"

# Print collected system information
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"

# Print license-related note
echo "License  : GNU/Linux is mostly GPL licensed"
