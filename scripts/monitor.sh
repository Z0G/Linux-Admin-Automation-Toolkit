#!/bin/bash

echo "[+] Uptime:"
uptime                                     # Shows system uptime

echo "[+] Disk usage:"
df -h | grep -v tmpfs                      # Human-readable disk space, excluding tmpfs

echo "[+] Top 5 CPU-consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
