#!/bin/bash

read -p "Enter sshd port: " port

sudo ssh-keygen -A
sudo systemctl restart sshd
sudo iptables -A INPUT -p tcp --dport $port -j ACCEPT
sshd -t
