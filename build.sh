#!/usr/bin/env bash

GREMLIN_VERSION=1.0.19
# Build exakat docker
docker run --rm -it -v "$PWD:/mnt" codacy/alpine-gremlin:$GREMLIN_VERSION
docker build --no-cache -t codacy/codacy-exakat:latest --build-arg gremlinVersion=$GREMLIN_VERSION .
