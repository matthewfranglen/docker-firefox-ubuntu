#!/bin/bash

readonly CONTAINER_NAME=${1:-firefox}

docker run                                        \
    --name "${CONTAINER_NAME}"                    \
    --env DISPLAY=$DISPLAY                        \
    --device /dev/snd                             \
    --volume /tmp/.X11-unix:/tmp/.X11-unix        \
    --volume $XAUTHORITY:/tmp/.host_Xauthority:ro \
    --shm-size 256m                               \
    --rm                                          \
    firefox
