#!/bin/bash


# this will check the health od the node
(echo "cpu utilization:"; uptime

echo "memory utilization:"; free -m

echo "disk usage:" ; df -h

echo "memory utizating top 5 resources"; ps aux --sort=-%mem | head -n 6) > system_health.log
