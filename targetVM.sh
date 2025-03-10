#!/bin/bash
# Install traffic generation tools
sudo apt update
sudo apt install nmap hping3 -y

# Generate test traffic (example)
nmap -sS 172.31.16.0/20  # Scan Management subnet
hping3 -S -p 80 --flood 172.31.16.20  # Flood GUI Access VM
