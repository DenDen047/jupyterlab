#!/bin/bash

CURRENT_PATH=$(PWD)
IMAGE_NAME="denden047/jupyerlab"

docker build -t ${IMAGE_NAME} "$CURRENT_PATH"/docker && \
docker run -it --rm \
    -p 8890:8888 \
    -v "$CURRENT_PATH"/notebooks:/home/jovyan \
    -v "$CURRENT_PATH"/src:/src \
    ${IMAGE_NAME} \
    /bin/bash #-c "start.sh jupyter lab --NotebookApp.token=''"
