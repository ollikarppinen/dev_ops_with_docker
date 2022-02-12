#!/bin/bash

# Exercise 1.2: Cleanup
# We've left containers and a image that won't be used anymore and are taking space, as docker ps -as and docker images will reveal.
#
# Clean the docker daemon from all images and containers.
#
# Submit the output for docker ps -a and docker images

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)

docker ps -a > exercise_1_2_solution.txt
docker images >> exercise_1_2_solution.txt
