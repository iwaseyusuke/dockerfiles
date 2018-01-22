#!/usr/bin/env bash

set -x -e -u

REF_NAME=osrg/exabgp:master.$(date +"%Y%m%d")

OLD_IMAGE=$(docker image ls -q --filter "reference=${REF_NAME}")
if [ -n "${OLD_IMAGE}" ]
then
    docker image rm ${OLD_IMAGE}
fi

docker build -t ${REF_NAME} .

