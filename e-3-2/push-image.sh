#!/bin/sh
set -eu

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"

git clone "$GITHUB_CLONE_URL" --depth 1 ./repo

cd ./repo || exit

IMAGE_NAME="dev_ops_with_docker_exercise_3_2_$(basename "$(git remote get-url origin)")"
docker build --tag "$IMAGE_NAME" .

docker tag "$IMAGE_NAME" ollikarppinen/"$IMAGE_NAME"
docker push ollikarppinen/"$IMAGE_NAME"
