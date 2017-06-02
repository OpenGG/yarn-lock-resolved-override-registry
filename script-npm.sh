#!/bin/bash

set -xe

export NPM_CONFIG_USERCONFIG=$PWD/custom-npmrc

# cache folder
rm -rf ./cache-npm

# modules folder
rm -rf ./node_modules

# show config
npm config list --cache ./cache-npm

# install without cache
npm install --cache ./cache-npm --verbose

