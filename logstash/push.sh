#!/bin/bash

set -e

REGISTRY=${REGISTRY:-10.0.0.5:6000}
NAME=logstash

echo "Pushing docker for $REGISTRY/$NAME"

sudo docker push $REGISTRY/$NAME
