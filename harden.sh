#!/bin/bash
# ACTION: Verify Root
[[ $EUID -ne 0 ]] && echo "Error: Run as root" && exit 1

# ACTION: Harden SSH (In-place edit)
sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart sshd

# ACTION: Firewall Rules
ufw default deny incoming
ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw --force enable

echo "System Hardening Applied."
