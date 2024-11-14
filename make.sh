#!/usr/bin/bash

cd ./sih_code/docker
pwd

# Paranoid Cleanup: Overkill
if [ "$1" == "dump" ]; then
    # go clean -cache
    # du -hs $(go env GOCACHE)
    docker-compose down -v
    docker stop $(docker ps -aq)
    docker rm $(docker ps -aq)
    docker rmi -f $(docker images -q)
    docker volume rm -f $(docker volume ls -q)
    docker network rm $(docker network ls --filter "type=custom" -q)
    docker system prune -af --volumes
else
    echo "Skipping cleanup..."
    docker-compose down -v
    docker-compose up --build
fi
