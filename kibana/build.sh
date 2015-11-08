#!/bin/bash

set -e

REGISTRY=10.0.0.5:6000
NAME=kibana
#TAG=$(git rev-parse HEAD)
TAG=1112

echo "Building docker for $REGISTRY/$NAME:$TAG"

# sudo docker build -t 10.0.0.5:6000/hello:1 .
# sudo docker tag -f 10.0.0.5:6000/hello:1 10.0.0.5:6000/hello:latest
# sudo docker push 10.0.0.5:6000/hello
sudo docker build -t $REGISTRY/$NAME:$TAG .
sudo docker tag -f $REGISTRY/$NAME:$TAG $REGISTRY/$NAME:latest
