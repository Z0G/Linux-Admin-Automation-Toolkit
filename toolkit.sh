#!/bin/bash

while true; do
  clear
  echo "=== Linux Admin Toolkit ==="
  echo "1) Manage Users"
  echo "2) Analyze Logs"
  echo "3) Monitor System"
  echo "4) Check for Updates"
  echo "5) Exit"
  read -p "Choose an option [1-5]: " choice

  case $choice in
    1) bash scripts/user_manager.sh ;;
    2) bash scripts/log_analyzer.sh ;;
    3) bash scripts/monitor.sh ;;
    4) bash scripts/updater.sh ;;
    5) echo "Goodbye!"; break ;;
    *) echo "Invalid choice."; sleep 1 ;;
  esac
done
