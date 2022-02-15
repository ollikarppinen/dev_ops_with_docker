#!/bin/bash

docker run -d --name foo -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
sleep 10
docker stop foo
docker rm foo
