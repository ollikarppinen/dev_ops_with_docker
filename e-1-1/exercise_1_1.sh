#!/bin/bash

# Exercise 1.1: Getting started
# Since we already did "Hello, World!" in the material let's do something else.
#
# Start 3 containers from image that does not automatically exit, such as nginx, detached.
#
# Stop 2 of the containers leaving 1 up.
#
# Submit the output for docker ps -a which shows 2 stopped containers and one running.

docker container run -d --name foo nginx
docker container run -d --name bar nginx
docker container run -d --name baz nginx

docker stop foo
docker stop bar

docker ps > exercise_1_1_solution.txt

docker stop baz
docker rm foo
docker rm bar
docker rm baz
