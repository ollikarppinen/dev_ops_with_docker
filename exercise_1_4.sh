#!/bin/bash

docker run --name ubuntu -i -d ubuntu

docker exec ubuntu apt -qq update
docker exec ubuntu apt -qq install curl -y
docker exec -it ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'

docker stop ubuntu
docker rm ubuntu
