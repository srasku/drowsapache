#!/bin/sh -e

IMAGE=docover:latest
BUILDKIT_PROGRESS=plain docker build -f Dockerfile -t ${IMAGE} .
docker run \
    --rm \
    -it \
    --mount "type=bind,source=$(pwd),target=/home/develop" \
    -p 9000:80 \
    ${IMAGE} \
    "$@"
