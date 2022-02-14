#!/bin/bash

docker container run --name foo -d devopsdockeruh/simple-web-service:ubuntu
docker container run --name bar -d devopsdockeruh/simple-web-service:alpine
sleep 11
printf "log for devopsdockeruh/simple-web-service:ubuntu:" > exercise_1_5_solution.txt
docker container exec -it foo cat ./text.log >> exercise_1_5_solution.txt
printf "\nlog for devopsdockeruh/simple-web-service:alpine:" >> exercise_1_5_solution.txt
docker container exec -it bar cat ./text.log >> exercise_1_5_solution.txt
printf "\nimage sizes:\n" >> exercise_1_5_solution.txt
docker image ls devopsdockeruh/simple-web-service:ubuntu >> exercise_1_5_solution.txt
docker image ls devopsdockeruh/simple-web-service:alpine >> exercise_1_5_solution.txt
docker stop foo bar
docker rm foo bar
