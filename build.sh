#!/bin/bash

declare -A base_images

base_images[buster]=debian:buster-20220125-slim
base_images[bullseye]=debian:bullseye-20220125-slim
base_images[focal]=ubuntu:focal-20220105

DEFAULT_BASE_IMAGE=bullseye
DEFAULT_TAG=latest

tag=$DEFAULT_TAG

while getopts b:d:t: flag
do
    case "${flag}" in
        b) base_image=${OPTARG};;
        t) tag=${OPTARG};;
    esac
done

if [ -z "${base_image}" ]; then
  base_image=$DEFAULT_BASE_IMAGE
fi

expanded_base_image=${base_images[$base_image]}

echo "Base Image: ["$expanded_base_image"]"
echo "Download from SourceForge: ["$download"]"
echo "Tag: ["$tag"]"

docker build . \
    --build-arg BASE_IMAGE=${expanded_base_image} \
    -t giof71/mpd-base-image:$tag
