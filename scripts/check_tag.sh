#!/bin/bash
# Script to check if tag already exists
tags=$(git tag)
for tag in ${tags[@]}; do 
if [[ "$@" == $tag ]]; then 
    echo "tag $@ already exists"
    exit 1
fi
done