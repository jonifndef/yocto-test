#!/bin/sh

image=$1

docker run -it --rm \
    --user $(id -u):$(id -g) \
    --device=/dev/kvm \
    -v $PWD:/home/user/workdir \
    -v $PWD/.ccache:/home/user/.ccache \
    --workdir /home/user/workdir \
    ${image}
