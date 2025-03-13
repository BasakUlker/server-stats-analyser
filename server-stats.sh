#!/bin/bash

echo "Server Performance Stats"

# Calculated CPU usage 
CPU_USAGE=$(top -bn1 | grep "%Cpu(s)" | awk '{print 100 - $8}')
echo "CPU Usage: $CPU_USAGE%"

# Calculated memory usage 
MEMORY_USAGE=$(free -m | head -n 2 | awk 'NR==2 {print $3/$2 * 100}')
echo "Memory Usage: $MEMORY_USAGE%"

# Calculated disk usage 
DISK_USAGE=$(df -h | awk '$6=="/" {print $3/$2 * 100}')
echo "Disk Usage: $DISK_USAGE%"

# Sorted the top 5 processes by highest CPU usage
TOP_5_PROCESS_BY_CPU=$(ps -e -o pid,cmd,%cpu --sort=-%cpu | head -n 6)
echo "Top 5 Processes by CPU Usage:"
echo "$TOP_5_PROCESS_BY_CPU"

# Sorted the top 5 processes by highest memory usage  
TOP_5_PROCESS_BY_MEM=$(ps -e -o pid,cmd,%mem --sort=-%mem | head -n 6)
echo "Top 5 Processes by memory usage:"
echo "$TOP_5_PROCESS_BY_MEM"

