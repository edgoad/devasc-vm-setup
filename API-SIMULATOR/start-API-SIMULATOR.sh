#!/bin/bash
iptables -t nat -I OUTPUT -p tcp -d 192.0.2.1 --dport 80 -j DNAT --to-destination 192.0.2.1:59980
cd /opt/API-SIMULATOR
/opt/API-SIMULATOR/venv/bin/python api-simulator.py  > /dev/null 2>&1
