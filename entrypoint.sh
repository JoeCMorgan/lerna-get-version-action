#!/bin/sh -l

LERNA_VERSION=$(grep -m1 version lerna.json | awk -F: '{ print $2 }' | sed 's/[", ]//g')

echo ::set-output name=lerna-version::$LERNA_VERSION
