#!/bin/bash

# Docker Cleanup Script
# This script will remove:
# - Stopped containers
# - Unused images
# - Unused networks
# - Unused volumes
#
#
docker container prune -f
docker image prune -f
docker volume prune -f 
docker network prune -f

echo "✅ Docker cleanup complete!"
