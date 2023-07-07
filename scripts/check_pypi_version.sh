#!/bin/bash
# Scripts to check if the release already exists in pypi
latestVersion=$(curl -s https://pypi.org/pypi/ajaejokes/json | jq -r '.info.version')
currentVersion=$(bash scripts/get_release_tag.sh)

echo "Latest Version: $latestVersion"
echo "Current Version: $currentVersion"

# TODO: Check semver format of currentVersion
# Check if current version = latestVersion first. (i.e. more common mistakes)
if [[ $latestVersion == $currentVersion ]]; then 
echo "$currentVersion is not upgraded"
exit 1
fi

releases=$(curl -s https://pypi.org/pypi/ajaejokes/json | jq -cr '.releases | keys | .[]')
for release in ${releases[@]}; do
if [[ $release == $currentVersion ]]; then
    echo "$currentVersion already exists"
    exit 1
fi
done