# Server Performance Stats Script

## Overview

This script, server-stats.sh, is designed to analyze basic server performance statistics on any Linux system. It provides information about:
- Total CPU usage
- Total memory usage (Free vs. Used, including percentage)
- Total disk usage (Free vs. Used, including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## Usage

### Running the Script
1. Make sure the script has execution permissions:
```
chmod +x server-stats.sh
```
2. Run the script:
```
./server-stats.sh
```
The script will display the relevant system statistics in a readable format.

### Instance Output
```
Server Performance Stats
CPU Usage: 4,1%
Memory Usage: 38,2278%
Disk Usage: 7,29614%
Top 5 Processes by CPU Usage:
    PID CMD                         %CPU
  10191 /snap/chromium/3060/usr/lib 13.3
   3250 /usr/bin/gnome-shell         2.1
   4632 /snap/chromium/3060/usr/lib  1.8
   4425 /snap/chromium/3060/usr/lib  1.4
   8387 /snap/chromium/3060/usr/lib  0.9
Top 5 Processes by memory usage:
    PID CMD                         %MEM
  10191 /snap/chromium/3060/usr/lib  7.1
   3250 /usr/bin/gnome-shell         4.5
   4425 /snap/chromium/3060/usr/lib  3.5
   8387 /snap/chromium/3060/usr/lib  3.2
   4632 /snap/chromium/3060/usr/lib  3.1
```

## Script Details

- CPU Usage: Extracted from the ```top``` command.
- Memory Usage: Calculated using the ```free -m``` command.
- Disk Usage: Retrieved from the ```df -h``` command.
- Top Processes: Extracted from the ```ps``` command, sorted by CPU and memory usage.

Related to: https://roadmap.sh/projects/server-stats
