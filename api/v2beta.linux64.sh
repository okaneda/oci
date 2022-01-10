#!/bin/bash
git clone --depth 1 https://${GHB_TKN}@github.com/okaneda/distribution.git
mv ./distribution ~/.hc
tree ~/.hc

chmod +x ~/.hc/scripts/api/index.sh
~/.hc/scripts/api/index.sh "$@"
