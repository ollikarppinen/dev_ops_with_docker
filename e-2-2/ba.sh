#!/bin/bash

docker-compose up -d
sleep 2
curl http://localhost:8080/ >> solution.txt
docker-compose down
