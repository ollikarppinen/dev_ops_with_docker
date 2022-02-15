#!/bin/bash

docker build --tag foo .
docker run -d --name foo -p 8080:8080 foo
sleep 5
curl localhost:8080/ping > response.html
docker stop foo
docker rm foo
