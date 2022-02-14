#!/bin/bash

docker image build --tag web-server .
docker run --name foo -d web-server
sleep 1
docker container logs foo > s.txt
docker stop foo
docker rm foo
