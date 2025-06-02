#!/bin/bash

echo "[+] Analyzing logs for errors..."
grep -Ei "error|fail|denied" /var/log/syslog | tail -n 20
