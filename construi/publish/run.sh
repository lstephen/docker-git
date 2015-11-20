#!/bin/bash

set -e

$VERSION_2_4=2.4.5
$VERSION_LATEST=$VERSION_2_4

docker build --tag lstephen/git:$VERSION_2_4 2.4/
docker tag lstephen/git:$VERSION_2_4 lstephen/git:2.4

docker tag lstephen/git:$VERSION_LATEST lstephen/git:latest


docker login --username=$DOCKERHUB_USERNAME --password=$DOCKERHUB_PASSWORD
docker push lstephen/git:latest
docker push lstephen/git:2.4
docker push lstephen/git:$VERSION_2_4

