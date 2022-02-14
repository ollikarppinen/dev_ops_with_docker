#!/bin/bash

# Exercise 1.3: Secret message
# Now that we've warmed up it's time to get inside a container while it's running!
#
# Image devopsdockeruh/simple-web-service:ubuntu will start a container that outputs logs into a file. Go inside the container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a "secret message".
#
# Submit the secret message and command(s) given as your answer.

docker container run --name foo -d devopsdockeruh/simple-web-service:ubuntu
echo "Sleeping for 11 seconds in order to print out secret"
sleep 11
docker container exec -it foo cat ./text.log > exercise_1_3_solution.txt
docker stop foo
docker rm foo
