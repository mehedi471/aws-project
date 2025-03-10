#!/bin/bash
# Install Suricata and dependencies
sudo add-apt-repository ppa:oisf/suricata-stable -y
sudo apt update
sudo apt install suricata -y

# Configure Suricata
sudo cp /path/to/suricata.yaml /etc/suricata/suricata.yaml
sudo suricata-update

# Enable IP forwarding
sudo sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sudo sysctl -p

# Configure NAT for traffic routing
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
sudo iptables-save | sudo tee /etc/iptables/rules.v4

# Install EveBox for GUI
wget https://evebox.org/files/releases/latest/evebox-linux-amd64.zip
unzip evebox-linux-amd64.zip
sudo mv evebox /usr/local/bin/
