#!/bin/bash

## declare an array variable
declare -a arr=("latest" "$@")

## now loop through the above array
for TAG in "${arr[@]}"
do
  docker build --platform linux/amd64 -t "vfalconi/terminus-env:$TAG" .
  docker push "vfalconi/terminus-env:$TAG"
done
