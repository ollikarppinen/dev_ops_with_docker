#!/bin/bash

docker build -t image-pusher .

docker run --rm \
    -e GITHUB_CLONE_URL="$GITHUB_CLONE_URL" \
    -e DOCKER_USERNAME="$DOCKER_USERNAME" \
    -e DOCKER_PASSWORD="$DOCKER_PASSWORD" \
    -v /var/run/docker.sock:/var/run/docker.sock:z image-pusher
