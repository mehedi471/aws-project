# AWS Security Project

## 📌 Project Overview
This project sets up an **Intrusion Detection System (IDS) using Suricata** in a **multi-VM AWS environment**. The setup consists of three VMs deployed within a VPC, using separate subnets for management and monitoring.

## 🏗️ Architecture
- **VPC CIDR:** `172.31.0.0/16`
- **Subnets:**
  - **Management Subnet:** `172.31.16.0/20` (Public)
  - **Monitoring Subnet:** `172.31.32.0/20` (Private)

### 🖥️ Virtual Machines (VMs)
| VM Name | Subnet | Role |
|---------|--------|------|
| **Monitoring VM** | Monitoring Subnet | Runs Suricata IDS |
| **Target VM** | Monitoring Subnet | Generates test traffic |
| **GUI Access VM** | Management Subnet | Provides remote access to the IDS GUI |

## 🚀 Deployment Steps
### 1️⃣ AWS Environment Setup
1. **Create a VPC** with CIDR `172.31.0.0/16`.
2. **Create Subnets:**
   - `172.31.16.0/20` (Public - Management)
   - `172.31.32.0/20` (Private - Monitoring)
3. **Launch three EC2 instances**:
   - Monitoring VM (Suricata IDS)
   - Target VM (Traffic source)
   - GUI Access VM (Management)

### 2️⃣ Install Suricata on Monitoring VM
```bash
sudo apt update && sudo apt install -y suricata
sudo systemctl enable --now suricata
```

### 3️⃣ Configure Suricata
- Edit `/etc/suricata/suricata.yaml` to monitor the correct network interface.
- Add custom rules in `/etc/suricata/rules/local.rules`.

### 4️⃣ Generate Test Traffic
On **Target VM**, run:
```bash
sudo apt install -y nmap
nmap -sS -p 22 172.31.32.X  # Replace X with the Monitoring VM's IP
```

### 5️⃣ View Logs from GUI Access VM
Use SSH or a web dashboard (e.g., Kibana or EveBox) to access Suricata logs.

## 📂 Repository Structure
```
📁 aws-security-project/
├── 📄 README.md  # Project overview and setup guide
├── 📁 configs/   # Suricata config files
├── 📁 scripts/   # Installation and setup scripts
├── 📁 logs/      # Sample Suricata logs
└── 📁 diagrams/  # Network architecture diagram
```

## 📊 Network Diagram
*(Diagram will be added soon)*

## 📌 Next Steps
- Fine-tune Suricata rules.
- Implement a web-based dashboard for alert monitoring.
- Conduct real-world attack simulations and analyze logs.

---
