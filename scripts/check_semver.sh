#!/bin/bash
# Check if valid semver 
# TODO: v prefix or .rc postfix are supported
VERSION="$@"
rx='^([0-9]+\.){0,2}(\*|[0-9]+)$'
if [[ $VERSION =~ $rx ]]; then
    echo "valid semver"
    exit 0
else
    echo "invalid semver"
    exit 1
fi