#!/bin/bash

docker login -u $DOCKER_USER -p $DOCKER_PASS
export REPO=dbaur/jcmpl
export TAG=`if [ "$TRAVIS_BRANCH" == "master" ]; then echo "latest"; else echo $TRAVIS_BRANCH ; fi`
docker build -t $REPO
docker tag $REPO $REPO:$TAG
docker push $REPO
