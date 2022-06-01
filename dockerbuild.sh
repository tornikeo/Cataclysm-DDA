#!/bin/bash
docker build \
    --no-cache \
    -t cdda:1 \
    -f Dockerfile \
    .
