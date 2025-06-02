#!/bin/bash			#Tells Linux to run with bash shell
echo "[+] User Manager"
read -p "Enter Username:" username		#Prompts user for a username
read -p "Action (add/del):" action		#Prompts for action (add or delete)

if [[ "$action" == "add" ]]; then
  sudo useradd -m "$username" && echo "User '$username' created."
elif [[ "$action" == "del" ]]; then
  sudo userdel -r "$username" && echo "User '$username' deleted."
else
  echo "Invalid action."
fi
