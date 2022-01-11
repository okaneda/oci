#!/bin/bash

SCRIPT_PATH=$(pwd)/.hc/scripts

git clone --depth 1 https://${GHB_TKN}@github.com/okaneda/distribution.git
mv ./distribution ~/.hc
tree ~/.hc

chmod +x ${SCRIPT_PATH}/api/index.sh
source ${SCRIPT_PATH}/api/index.sh "$@"
