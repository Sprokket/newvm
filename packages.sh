#!/bin/sh
apt-get update  # To get the latest package lists
apt-get install tmux net-tools screen pip sudo curl -y
user="$(ls /home)"
echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
