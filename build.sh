#!/bin/bash

set -e

IMAGE=my-archiso-builder

# Build the Docker image
docker build -t $IMAGE .

# Run the build
docker run --rm -it \
  --privileged \
  -v "$PWD/iso:/home/builder/iso" \
  -v "$PWD/out:/home/builder/out" \
  --user root \
  $IMAGE \
  bash -c "rm -rf /home/builder/out/work && mkarchiso -v -w /home/builder/out/work -o /home/builder/out /home/builder/iso"