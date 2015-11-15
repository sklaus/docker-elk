#!/bin/bash

set -e

REGISTRY=${REGISTRY:-placr-registry.visityci.nl}
NAME=nginx

echo "Pushing docker for $REGISTRY/$NAME"

docker push $REGISTRY/$NAME
