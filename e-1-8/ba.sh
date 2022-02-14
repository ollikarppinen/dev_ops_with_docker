#!/bin/bash

docker image build --tag curler .
echo "helsinki.fi" | docker run -i curler > s.txt
docker stop foo
docker rm foo
