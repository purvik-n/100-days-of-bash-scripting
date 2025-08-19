#!/bin/bash
# system_info.sh - Display basic system information

echo "=== System Information ==="
echo "Date: $(date)"                      # Prints current date and time
echo "Hostname: $(hostname)"              # Prints computer/server name
echo "Current User: $USER"                # Prints username of who is running the script
echo "Operating System: $(uname -s)"      # Prints OS name
echo "Kernel Version: $(uname -r)"        # Prints kernel version
echo "Architecture: $(uname -m)"          # Prints CPU architecture (like x86_64)
echo "Uptime: $(uptime)"                  # Prints how long the system has been running

echo "Disk Usage:"
df -h | head -5                           # Shows disk usage, only the top 5 lines for brevity

echo "Memory Usage:"
free -h                                   # Shows available memory in human-readable format
