#!/bin/bash
git config core.fileMode false
git clone https://${GHB_TKN}@github.com/okaneda/distribution.git
mv ./distribution ~/.hc
tree ~/.hc

chmod +x ~/.hc/scripts/api/index.sh
~/.hc/scripts/api/index.sh "$@"
