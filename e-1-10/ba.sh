#!/bin/bash

docker run -d --name foo -p 3000:8080 web-server
sleep 1
curl http://localhost:3000 > response.json
docker stop foo
docker rm foo
