#!/bin/bash

docker build --tag foo .
docker run -d --name foo -p 3000:8080 foo
sleep 5
curl localhost:3000 > response.html
docker stop foo
docker rm foo
