#!/bin/bash

set -e

REGISTRY=${REGISTRY:-10.0.0.5:6000}
NAME=elasticsearch

echo "Pushing docker for $REGISTRY/$NAME"

sudo docker push $REGISTRY/$NAME
