#!/bin/bash

echo "[+] Checking for system updates..."
sudo apt update -y
sudo apt list --upgradable

read -p "Press enter to return..."
