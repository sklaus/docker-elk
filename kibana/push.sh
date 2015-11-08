#!/bin/bash

set -e

REGISTRY=${REGISTRY:-10.0.0.5:6000}
NAME=kibana

echo "Pushing docker for $REGISTRY/$NAME"

docker push $REGISTRY/$NAME
