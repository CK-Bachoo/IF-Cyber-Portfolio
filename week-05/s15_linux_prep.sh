#!/bin/bash
echo "[*] Initiating Domain Join to titan.local..."
sudo apt-get update && sudo apt-get install -y realmd sssd sssd-tools libnss-sss libpam-sss adcli
sudo realm discover titan.local
sudo realm join titan.local -U Administrator
echo "%Domain\ Admins@titan.local ALL=(ALL:ALL) ALL" | sudo tee /etc/sudoers.d/domain_admins
sudo chmod 0440 /etc/sudoers.d/domain_admins
echo "[+] Domain Admins now have root."
