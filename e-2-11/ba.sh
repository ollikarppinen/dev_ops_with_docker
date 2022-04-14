#!/bin/bash

docker build --no-cache --tag reakt .
docker tag reakt ollikarppinen/reakt
docker push ollikarppinen/reakt

# repo https://github.com/ollikarppinen/reakt.git
# image https://hub.docker.com/r/ollikarppinen/reakt
