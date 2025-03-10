#!/bin/bash
# Access Suricata's EveBox GUI via SSH tunnel
ssh -i "your-key.pem" -L 5636:localhost:5636 ubuntu@<Monitoring-VM-Public-IP>
# Then open http://localhost:5636 in a browser
