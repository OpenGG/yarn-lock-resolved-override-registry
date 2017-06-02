#!/bin/bash

set -xe

export NPM_CONFIG_USERCONFIG=$PWD/custom-npmrc

# cache folder
rm -rf ./cache-yarn

# modules folder
rm -rf ./node_modules

# show config
yarn config list --cache-folder ./cache-yarn

# install without cache
yarn install --cache-folder ./cache-yarn --verbose
