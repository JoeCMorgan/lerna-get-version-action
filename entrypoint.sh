#!/bin/sh -l
LERNA_PATH="${1-.}"

LERNA_VERSION=$(grep -m1 version ${PACKAGE_JSON_PATH}/lerna.json | awk -F: '{ print $2 }' | sed 's/[", ]//g')

echo ::set-output name=lerna-version::$LERNA_VERSION
